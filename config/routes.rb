Rails.application.routes.draw do
  
  
  root to: 'pages#accueil'
  
  get '/team', to: 'pages#team'
  
  get '/contact', to: 'pages#contact'
  
  get '/welcome(/:name)', to: 'pages#welcome'
  
  get '/potin/:id', to: 'potins#potin'
  
  get '/user/:id', to: 'users#user'
  
end
