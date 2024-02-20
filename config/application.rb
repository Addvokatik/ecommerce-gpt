# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

require 'inherited_resources'

Bundler.require(*Rails.groups)

module EcommerceGpt
  class Application < Rails::Application
    #  config.middleware.use OmniAuth::Builder do
    #    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
    # end
  end
end
