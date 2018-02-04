Rails.application.routes.draw do
  resources :countries, only: [:index, :show]
  root 'countries#index'


  # Static Controller & View
  get 'about', to: 'static#about'

end
