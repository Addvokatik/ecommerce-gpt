# frozen_string_literal: true

module Admin
  class ApplicationController < ActiveAdmin::BaseController
    def authenticate_admin_user
      authenticate_user!
      return if current_user.admin?

      redirect_to new_user_session_path, alert: 'You must be an admin to access this page.'
    end
  end
end
