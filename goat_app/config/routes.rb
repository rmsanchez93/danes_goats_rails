Rails.application.routes.draw do

  
  
  get '/goats', to: 'goats#index'
  get '/goats/new', to: 'goats#new'
  get '/goats/:id', to: 'goats#show', as: 'goat'
  post '/goats', to: 'people#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
