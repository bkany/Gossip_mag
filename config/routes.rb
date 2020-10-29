Rails.application.routes.draw do
  
  root to: 'pages#accueil'
  
  resources :contact
  
  resources :potins do
  	resources :comment
  end
  
  resources :team
  
  resources :users
  
	resources :cities
	
	resources :sessions
  
end
