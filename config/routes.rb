Rails.application.routes.draw do
  resources :services
  devise_for :users
  resources :events
  resources :categories, only: %i[create destroy]
  root 'home#index'
end
