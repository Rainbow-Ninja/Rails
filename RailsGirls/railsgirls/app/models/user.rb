class User < ApplicationRecord
  
include Gravtastic
gravtastic :secure => true,
              :size => 80
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
