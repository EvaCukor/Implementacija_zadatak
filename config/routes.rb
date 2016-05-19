Rails.application.routes.draw do
  root to: 'receipts#new'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :users, only: :create
  resources :receipts, only: [:create, :index]
  resources :items
  
  get '/search', to: 'items#search', as: 'search_items'
end
