Rails.application.routes.draw do
  resources :games
  resources :users, only: [:create, :update]
    post '/login', to:'auth#create' #create user
    get '/profile', to: 'users#profile' #get existing user info
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
