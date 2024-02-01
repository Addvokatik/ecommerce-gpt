Rails.application.routes.draw do
  root to: 'home#index'
  get '/home', to: 'home#index', as: 'home'
  get '/about', to: 'home#about', as: 'about'
  get '/contact', to: 'home#contact', as: 'contact'
  get 'signup', to: 'registrations#new', as: 'signup'
  post 'signup', to: 'registrations#create'
  # ...
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # devise_for :admin_users, controllers: {
    # registrations: 'admin_users/registrations',
    # sessions: 'admin_users/sessions'
    # omniauth_callbacks: 'admin_users/omniauth_callbacks'
  # }

  ActiveAdmin.routes(self)

  get 'login', to: 'sessions#new'

  # Інші маршрути...
  # ...
end