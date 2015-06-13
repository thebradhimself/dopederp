Rails.application.routes.draw do

  root 'pages#home'

  resources :pictures

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/result' => 'pages#search_index'
end
