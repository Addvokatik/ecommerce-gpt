# frozen_string_literal: true

ActiveAdmin.setup do |config|
  config.site_title = 'Ecommerce Gpt'

  config.site_title_link = '/'

  config.site_title_image = 'logo.png'

  config.load_paths = [File.join(Rails.root, 'app', 'ui')]

  config.load_paths = [
    File.join(Rails.root, 'app', 'admin'),
    File.join(Rails.root, 'app', 'cashier')
  ]

  config.default_namespace = :hello_world

  config.authentication_method = :authenticate_admin_user

  config.filter_attributes = %i[encrypted_password password password_confirmation]
  config.current_user_method = :current_admin_user
  config.logout_link_path = :destroy_admin_user_session_path
  config.batch_actions = true
  config.localize_format = :long
end

module ActiveAdmin
  class BaseController
    def authenticate_admin_user
      authenticate_user!
      return if current_user.admin?

      redirect_to new_user_session_path, alert: 'You must be an admin to access this page.'
    end
  end
end
