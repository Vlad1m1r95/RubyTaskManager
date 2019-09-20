class ProfileController < ApplicationController
  before_action :authenticate_user!
  def index
    
    @task = Task.all
    @user = User.all
    
   


  end
  
end
