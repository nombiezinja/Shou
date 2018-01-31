class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_admin_user!
    authenticate_user!
    unless current_user.admin?
      access_denied
    end
  end

  def access_denied
    flash[:alert] = "Unauthorized Access!"
    redirect_to root_path
  end 
  
  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_root_path
    else
      root_path
    end
  end

end
