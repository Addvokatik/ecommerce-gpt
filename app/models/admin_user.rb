class AdminUser < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "updated_at"] # Add other attributes as needed
  end

  # other code...
end
