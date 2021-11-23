Rails.application.routes.draw do
root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :lo_templates
  resources :templates
  resources :users_ids
  resources :events
  resources :lo_events
  resources :users
  get '/api' => redirect('/swagger/dist/index.html?url=/api-docs.json')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
