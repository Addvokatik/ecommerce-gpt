Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_for :admin_users, path: 'admin_users', controllers: {
    registrations: 'admin_users/registrations',
    sessions: 'admin_users/sessions',
    omniauth_callbacks: 'admin_users/omniauth_callbacks'
  }

  ActiveAdmin.routes(self)

  get 'login', to: 'sessions#new'

  # Інші маршрути...
  # ...
end