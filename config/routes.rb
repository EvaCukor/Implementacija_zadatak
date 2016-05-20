Rails.application.routes.draw do
  root to: 'receipts#new'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/search', to: 'items#search', as: 'search_items'
  
  resources :users, only: :create
  resources :receipts, only: [:create, :index] do
    get :autocomplete_item_name, :on => :collection
  end
  resources :items
end
