class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def restrict_access
    if !current_user
      flash[:alert] = "You must log in."
      redirect_to new_session_path
    end 
  end 

  def current_user #regular methods in this file can be accessed by models only
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end 

  helper_method :current_user #helper method is written to be accessed by the views (anything html.erb) 

end
