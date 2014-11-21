Rails.application.routes.draw do
  root "games#index"

  resources :secret_numbers, :only => [:new, :show]

  get '/games', to: 'games#index'
  get '/secret_numbers', to: 'secret_numbers#new'
end
