Rails.application.routes.draw do

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users
  root to: 'pages#home'
  get 'univers', to: 'pages#univers'
  get 'conseil', to: 'pages#conseil'
  get 'event', to: 'pages#event'
  get 'boutique', to: 'pages#boutique'
  get 'art_table', to: 'pages#art_table'
  get 'decoration', to: 'pages#decoration'
  get 'luminaires', to: 'pages#luminaires'
  get 'linge', to: 'pages#linge'
  get 'mobilier', to: 'pages#mobilier'
  get 'admin', to: 'pages#admin'
  get 'mention', to: 'pages#mention'

  resources :contacts, only: [:new, :create]
  resources :events
  resources :event_subscriptions

  resources :products
  resources :orders do
    resources :payments, only: :new
  end
  resources :line_items
    post 'line_items/:id/add', to: "line_items#add_quantity", as: "line_item_add"
    post 'line_items/:id/reduce', to: "line_items#reduce_quantity", as: "line_item_reduce"
  resources :carts
  post 'without_login', to: 'orders#without_login'

  # resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

