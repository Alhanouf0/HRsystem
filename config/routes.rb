Rails.application.routes.draw do
  get 'home/index'
  resources :divisions
  resources :targets
  resources :teams
  resources :employees
  resources :users
  root :to => "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
