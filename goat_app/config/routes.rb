Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :goats, only:[:index, :new, :show, :create]
  # get '/goats', to: "goats#index", as: "goats"

  # get 'goats/new', to: "goats#new"

  # get '/goats/:id', to: "goats#show", as: 'goat'

  # post '/goats', to: "goats#create"
end

# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#    # resources :kittens, only: [:create, :index, :show]

#   get '/kittens', to: "kittens#index", as: "kittens"
   
#   # we need a form for the user to fill
  
#   #  create a new kitten requires two actions 
#   # therefore we need two routes set up 
#   get 'kittens/new', to: "kittens#new"

#   get '/kittens/:id', to: "kittens#show", as: 'kitten'

#   post '/kittens', to: "kittens#create"
#   # new is allowing you to create a form and show it 
#   # and create is taking that information and submitting it to database
# end
