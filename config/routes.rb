Rails.application.routes.draw do
  resources :boat_wiring_harnesses
  resources :circuits
  resources :wires
  resources :connector_terminals
  resources :terminals
  resources :wiring_harness_connectors
  resources :connectors
  resources :wiring_harnesses
  root "components#index"

  resources :components do 
    resources :circuits
  end

  resources :boats do
    resources :components
  end



  # get 'boat/components/:id', to: 'components#boat_components', as: 'boat_components'
  # get 'boat/components/', to: 'components#boat_details', as: 'boat_details'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
