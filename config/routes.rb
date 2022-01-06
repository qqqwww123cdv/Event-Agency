Rails.application.routes.draw do
  resources :services
  devise_for :users
  resources :events
  resources :categories, only: %i[create destroy]
  root 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
