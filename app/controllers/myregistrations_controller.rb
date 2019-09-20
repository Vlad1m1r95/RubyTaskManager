class MyregistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to dashboard_index_path
    else 
      render :new
    end
    
    

  end

  def update
    super
  end

  private def user_params

    params.require(:user).permit(:name, :email, :password)
  
    end
   # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign in.
  def after_sign_in_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end  

 
end 