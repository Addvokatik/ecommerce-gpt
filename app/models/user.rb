class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :omniauthable, omniauth_providers: [:google_user]
         # ...

   
     def self.from_omniauth(auth)
       where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
         user.provider = auth.provider
         user.uid = auth.uid
         user.name = auth.info.name
         user.oauth_token = auth.credentials.token
         user.oauth_expires_at = Time.at(auth.credentials.expires_at)
         user.save!
       end
     end
   
     # ...
   end