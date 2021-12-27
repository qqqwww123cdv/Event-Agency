Rails.application.routes.draw do
  resources :categories
  #get 'services/categories', to: 'services#categories', as: 'service_categories'
  resources :services
  devise_for :users
  resources :events
  root 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
