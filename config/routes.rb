Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :messages, only: [:index]
end
