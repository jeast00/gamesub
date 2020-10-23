Rails.application.routes.draw do
  
  # Create custom routes 
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  
  resources :subscriptions
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
