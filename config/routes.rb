Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  root 'products#index'

  get '/home', to: 'home#index', as: 'home'
  get '/about', to: 'home#about', as: 'about'
  get '/contact', to: 'home#contact', as: 'contact'
  get 'signup', to: 'registrations#new', as: 'signup'
  post 'signup', to: 'registrations#create'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  ActiveAdmin.routes(self)

  get 'login', to: 'sessions#new'

  # Інші маршрути...
  # ...
 
end