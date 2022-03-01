Rails.application.routes.draw do
  #get 'users/index'
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  # your routes here...

      devise_for :users, :path_prefix => 'd'
      resources :users, :only =>[:show]

      get 'home/index'
      resources :divisions
      resources :targets
      resources :teams
      resources :employees

      match '/users',   to: 'users#index',   via: 'get'
      match '/users/:id',     to: 'users#show',       via: 'get'


      root :to => "home#index"
      # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

      # Defines the root path route ("/")
      # root "articles#index"
end
end
