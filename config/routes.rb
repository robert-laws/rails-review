Rails.application.routes.draw do
  
  # resources :countries, only: [:index, :show, :new]

  resources :cities, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get '/countries', to: 'countries#index'
  post '/countries', to: 'countries#create'
  
  get '/countries/new', to: 'countries#new', as: 'new_country'

  get '/countries/:id', to: 'countries#show', as: 'country'
  get '/countries/:id/edit', to: 'countries#edit', as: 'edit_country'
  patch '/countries/:id', to: 'countries#update'
  
  get '/countries/:id/change_membership', to: 'countries#change_membership', as: 'change_membership'

  # Static Controller & View
  get '/about', to: 'static#about', as: 'about'
  get '/welcome/:name_id', to: 'static#welcome', as: 'welcome'

  # Contact Form
  get '/contact', to: 'static#contact'
  post '/contact', to: 'static#comment'
  
  root 'countries#index'
end
