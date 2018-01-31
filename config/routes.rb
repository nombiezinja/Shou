Rails.application.routes.draw do
    
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    confirmations: 'users/confirmations', 
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    omniauth_callbacks: "users/omniauth_callbacks" 
  }

  ActiveAdmin.routes(self)
  
  root to: 'pages#welcome'
end
