Rails.application.routes.draw do
  get '/goats', to: 'goats#index'

  get '/goats/:id', to: "goats#show", as: 'goat'

  

end
