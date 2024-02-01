class AdminUsers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    # Commented out the entire code block to disable its execution
    # You need to implement the method below in your model (e.g. app/models/admin_user.rb)
    # @admin_user = AdminUser.from_omniauth(request.env['omniauth.auth'])
    #
    # if @admin_user.persisted?
    #   sign_in_and_redirect @admin_user, event: :authentication #this will throw if @admin_user is not activated
    #   set_flash_message(:notice, :success, kind: 'Google') if is_navigational_format?
    # else
    #   session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
    #   redirect_to new_admin_user_registration_url
    # end
  end
end
