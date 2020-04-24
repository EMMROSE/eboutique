Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :products
  resources :orders
  resources :line_items
    post 'line_items/:id/add', to: "line_items#add_quantity", as: "line_item_add"
    post 'line_items/:id/reduce', to: "line_items#reduce_quantity", as: "line_item_reduce"
  resources :carts
  # resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
