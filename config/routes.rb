# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users
  ActiveAdmin.routes(self)
  # ...
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'login', to: 'sessions#new' 
  # Інші маршрути...
  # ...
end