class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_user #regular methods in this file can be accessed by models only
    @current_user ||= User.find(session[:user_id]) if session [:user_id]
  end 

  helper_method :current_user #helper method is written to be accessed by the views (anything html.erb) 


end
