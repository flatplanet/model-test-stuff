class HomeController < ApplicationController
  def index
  end
  
  def users
    @users = User.all
  end
  
  def my_patients
    @my_patients = User.find_by(id: current_user.id)
    
      
  end
  
  
end
