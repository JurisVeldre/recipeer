Rails.application.routes.draw do
  root 'home#index'

  resources :home, only: [:index]
  resources :fridge_ingredients, only: [:index, :create, :destroy]
end
