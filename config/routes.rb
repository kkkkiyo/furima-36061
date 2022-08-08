Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :order_form, only: [:index, :create]
  resources :orders do
    resources :items, only: :create
  end
end
