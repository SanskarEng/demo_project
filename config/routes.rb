Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # get 'products/index'
  # get 'catagorys/index'
  # root "pages#home"
  root "catagorys#index"
  # get 'about' => 'pages#about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pages 
  resources :catagorys
  resources :products



  # Defines the root path route ("/")
  # root "articles#index"
end
