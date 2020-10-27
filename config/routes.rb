Rails.application.routes.draw do
  
  root to: 'pages#accueil'
  
  get '/team', to: 'pages#team'
  
  resources :contact
  
  resources :potins do
  	resources :comment
  end
  
  get '/welcome(/:name)', to: 'pages#welcome'
  
  get '/user/:id', to: 'users#user'
  

  
end
