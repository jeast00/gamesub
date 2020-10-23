Rails.application.routes.draw do
  #start app with root route
root 'sessions#new'

  # Create custom routes 
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/sessions/' => 'sessions#destroy'
  
  resources :subscriptions
  
  resources :games do
    resources :subscriptions
  end

  resources :users do
    resources :subscriptions
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
