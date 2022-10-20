Rails.application.routes.draw do
  resources :images
  resources :nodes
  resources :places
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :roles
  resources :manages
  resources :cities
  resources :states
  resources :countries
  # get 'companies/index'
  # get 'companies/show', to: 'companies#show'
  # get 'companies/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "companies#index"
  resources :companies
  get "/get_states", to: "states#get_states"
  get '/get_cities', to: "cities#get_cities"
  get '/manages', to: "manages#index"
end
