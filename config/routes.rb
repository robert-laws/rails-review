Rails.application.routes.draw do
  
  # resources :countries, only: [:index, :show]

  get '/countries', to: 'countries#index'
  get '/countries/new', to: 'countries#new'

  get '/countries/:id', to: 'countries#show', as: 'country'
  # Static Controller & View
  get 'about', to: 'static#about', as: 'about'

  root 'countries#index'
end
