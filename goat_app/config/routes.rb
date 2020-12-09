Rails.application.routes.draw do

resources :goats, only: [:index, :new, :create]
  get 'goats/:id', to: 'goats#show', as: 'goat'

resources :people, only: [:index, :new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
