Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :persons , only: [:index, :show ]
  resources :goats , only:[ :index, :show ]
end
