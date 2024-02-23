Rails.application.routes.draw do
  resources :splices

  root "components#index"

  get '/kwh', to: 'pages#kwh', as: 'kwh'


  get '/boats/batch_upload', to: 'boats#batch_upload', as: 'boat_batch_upload'
  post '/boats/batch_create', to: 'boats#batch_create', as: 'boat_batch_create'
  get '/wiring_harnesses/batch_upload', to: 'wiring_harnesses#batch_upload', as: 'wiring_harness_batch_upload'
  post '/wiring_harnesses/batch_create', to: 'wiring_harnesses#batch_create', as: 'wiring_harness_batch_create'
  get '/boat_wiring_harnesses/batch_upload', to: 'boat_wiring_harnesses#batch_upload', as: 'boat_wiring_harness_batch_upload'
  post '/boat_wiring_harnesses/batch_create', to: 'boat_wiring_harnesses#batch_create', as: 'boat_wiring_harness_batch_create'
  get '/connectors/batch_upload', to: 'connectors#batch_upload', as: 'connector_batch_upload'
  post '/connectors/batch_create', to: 'connectors#batch_create', as: 'connector_batch_create'
  get '/wiring_harness_connectors/batch_upload', to: 'wiring_harness_connectors#batch_upload', as: 'wiring_harness_connector_batch_upload'
  post '/wiring_harness_connectors/batch_create', to: 'wiring_harness_connectors#batch_create', as: 'wiring_harness_connector_batch_create'
  get '/terminals/batch_upload', to: 'terminals#batch_upload', as: 'terminal_batch_upload'
  post '/terminals/batch_create', to: 'terminals#batch_create', as: 'terminal_batch_create'
  get '/components/batch_upload', to: 'components#batch_upload', as: 'component_batch_upload'
  post '/components/batch_create', to: 'components#batch_create', as: 'component_batch_create'
  get '/circuits/batch_upload', to: 'circuits#batch_upload', as: 'circuit_batch_upload'
  post '/circuits/batch_create', to: 'circuits#batch_create', as: 'circuit_batch_create'
  get '/splices/batch_upload', to: 'splices#batch_upload', as: 'splice_batch_upload'
  post '/splices/batch_create', to: 'splices#batch_create', as: 'splice_batch_create'




  resources :boat_wiring_harnesses

  resources :circuits do
    get :form_connectors, on: :collection
  end
  
  resources :wires
  resources :connector_terminals
  resources :terminals
  resources :wiring_harness_connectors
  resources :connectors
  resources :splices
  resources :wiring_harnesses do
    resources :circuits
    resources :connectors
  end
  

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
