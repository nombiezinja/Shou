class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def facebook
    puts "this is running"
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect root_path
      set_flash_message(:notice, :success)
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end