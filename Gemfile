# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.2'

gem 'activeadmin'
gem 'cancancan'
gem 'devise'
gem 'draper'
gem 'pundit'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sassc-rails' # Add this line
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development do
  gem 'guard'
  gem 'guard-livereload', '~> 2.5', require: false
end

group :development, :test do
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
end

gem 'nokogiri'

gem 'bcrypt'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection'

gem 'inherited_resources', github: 'activeadmin/inherited_resources'