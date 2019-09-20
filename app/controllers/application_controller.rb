class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  # def authenticate_user!
  #   if user_signed_in?
  #     super
  #   else
  #     redirect_to login_path, :notice => 'if you want to add a notice'
  #     ## if you want render 404 page
  #     ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
  #   end
  # end
  def after_sign_in_path_for(resource)
    if current_user.group == 'Admin'
    stored_location_for(resource) || dashboard_index_path
    else
      stored_location_for(resource) || profile_index_path 
    end
  end
end
