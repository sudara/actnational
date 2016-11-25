Rails.application.routes.draw do
  resources :events
  resources :regions
  resources :topics
  resources :categories
  root 'events#index'
end
