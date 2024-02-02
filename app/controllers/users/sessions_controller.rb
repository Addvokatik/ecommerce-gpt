module Users
  class SessionsController < Devise::SessionsController
    def create
      super
      UserMailer.login_notification(current_user).deliver_later if current_user
    end
  end
end