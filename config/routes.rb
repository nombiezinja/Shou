Rails.application.routes.draw do
    
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    confirmations: 'users/confirmations', 
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  # ActiveAdmin.register User do

  #   member_action :lock, method: :put do
  #     resource.lock!
  #     redirect_to resource_path, notice: "Locked!"
  #   end
  
  # end
  ActiveAdmin.routes(self)
  
  root to: 'pages#welcome'
end
