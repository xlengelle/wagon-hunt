Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"

  # resources :products, only: [:new, :create, :index, :show]


  # Lesson CRUD - Le Routing CRUD dans Rails
  # ----------------------------------------
  # get "/products" => "products#index"
  # get "/products/:id" => "products#show"

  # ACtions de création
  # get "products/new" => "products#new"
  # post "products" => "products#create"

  # Actions de modification
  # get "products/:id/edit" => "products#edit"
  # patch "products/:id" => "products#update"

  # Actions de suppression
  # delete "products/:id" => "products#destroy"
  #

  resources :products
  resources :categories

end
