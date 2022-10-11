Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :orders
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  resources :users
  resources :line_items
  resources :carts
  get "store/index"
  resources :products do
    get :who_bought, :on => :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  #root "products#new"

  root :to => "store#index", :as => "store"
  get "users/index"
  # get 'users/index'
end
