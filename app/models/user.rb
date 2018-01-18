class User < ApplicationRecord
  
  devise :registerable, :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable, 
         :confirmable, :omniauthable
end
