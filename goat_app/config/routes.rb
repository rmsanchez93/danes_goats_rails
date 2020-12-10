Rails.application.routes.draw do

  resources :goats, only: [:index, :new, :show, :create]
  
  # get '/goats', to: "goats#index", as: 'goats'
  # get 'goats/new', to: "goats#new"
  # get '/goats/:id', to: "goats#show", as: 'goat'
  # post '/goats', to: "goats#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
