Rails.application.routes.draw do

  root 'pages#home'
  get '/about' => 'pages#about'

  resources :pictures

  post '/pictures/:id' => 'pictures#upvote'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/result' => 'pages#search_index'
end
