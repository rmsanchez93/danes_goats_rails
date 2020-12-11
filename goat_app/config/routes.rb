Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/goats', to: "goats#index"#, as: "goats"

  # get '/goats/:id', to: "goats#show"#, as: 'goat'

  # Error 1: No route matches [GET] "/goats"
  # Step 1: create route for #index.
  get 'goats', to: "goats#index", as: "goats"


  # Step 7: create route for forms to create new goats
  get 'goats/new', to: "goats#new"


  # Step 4: create route for #show
  get '/goats/:id', to: "goats#show", as: 'goat'

  post '/goats', to: "goats#create"


  get 'people', to: "people#index", as: "people"

  get 'people/new', to: "people#new"

  get '/people/:id', to: "people#show", as: "person"

  post '/people', to: "people#create"
end
