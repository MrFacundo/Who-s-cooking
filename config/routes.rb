Rails.application.routes.draw do
  devise_for :users
  get '/dashboard', to: 'pages#dashboard'

  root to: 'pages#home'
  resources :restaurants, only: [:index, :show] do
    resources :orders, only: [:new, :create]
  end

  resources :meals, only: [:index, :show] do
    resources :order_items, only: [:new, :create]
  end

  get '/meals/:meal_id/recipe', to: 'meals#recipe', as: 'recipe'

  resources :orders, only: [:show, :edit, :update, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :order_items, only: [:edit, :update, :destroy]

end
