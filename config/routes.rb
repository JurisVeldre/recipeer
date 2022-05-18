Rails.application.routes.draw do
  root 'home#index'

  resources :home, only: [:index]
  get '/home/get_recipes', to: 'home#get_recipes'

  resources :fridge_ingredients, only: [:index, :create, :destroy]
end
