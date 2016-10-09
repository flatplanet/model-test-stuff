class HomeController < ApplicationController
  def index
  end
  
  def users
    @users = User.all
  end
  
  def my_patients
    if user_signed_in?
      @my_patients = User.find_by(id: current_user.id)
    end
    
    
      
  end
  
  
end
