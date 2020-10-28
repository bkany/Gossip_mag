Rails.application.routes.draw do
  
  root to: 'pages#accueil'
  
  resources :contact
  
  resources :potins do
  	resources :comment
  end
  
  resources :team
  
  get '/welcome(/:name)', to: 'pages#welcome'
  
  get '/user/:id', to: 'users#user'
  #resources :users
  
	resources :cities
  
end
