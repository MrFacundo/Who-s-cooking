Rails.application.routes.draw do
  get 'order/new'
  get 'order/create'
  get 'order_items/new'
  get 'order_items/create'
  get 'meals/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :restaurants, only: [:index, :show] do
    resources :orders, only: [:new, :create]
  end

  resources :meals, only: [:index, :show] do
    resources :order_items, only: [:new, :create]
  end

  resources :orders, only: [:show, :edit, :update]
end
