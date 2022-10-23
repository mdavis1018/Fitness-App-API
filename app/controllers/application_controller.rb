class ApplicationController < ActionController::API
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
 
  def authenticate_user
    redirect_to '/login' , status: :see_other unless current_user
  end
end
