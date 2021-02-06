Rails.application.routes.draw do
  devise_for :users
  root to: 'exhibitions#index'
  resources :exhibitions, except: [:index] do
    resources :comments, only: [:create, :destroy]
  end
end
