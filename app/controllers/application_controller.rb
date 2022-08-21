class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource) #ログイン後マイページ
    user_path(resource)
  end

  def after_sign_out_path_for(resource) #ログアウト後トップページ
    root_path(resource)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :postal_code, :prefecture_code, :city, :street])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
  
  def redirect_login
    redirect_to new_user_session_path unless user_signed_in?
  end
  
end
