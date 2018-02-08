Rails.application.routes.draw do
  
  # resources :countries, only: [:index, :show, :new]

  get '/countries', to: 'countries#index'
  get '/countries/new', to: 'countries#new', as: 'new_country'

  get '/countries/:id', to: 'countries#show', as: 'country'
  get '/countries/:id/change_membership', to: 'countries#change_membership', as: 'change_membership'

  # Static Controller & View
  get 'about', to: 'static#about', as: 'about'
  get 'welcome/:name_id', to: 'static#welcome', as: 'welcome'

  root 'countries#index'
end
