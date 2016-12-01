Rails.application.routes.draw do
  resources :events 
  resources :regions
  resources :topics
  resources :categories
  
  get '/admin', to: 'admin#index'
  root 'events#index'
end
