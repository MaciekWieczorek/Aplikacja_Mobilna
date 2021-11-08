Rails.application.routes.draw do
  resources :lo_templates
  resources :templates
  resources :users_ids
  resources :events
  resources :lo_events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
