class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  before_action :require_user

  helper_method :logged_in?, :current_user

  def require_user
    if !logged_in?
      flash[:notice] = "You must be logged in to perform this action"
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end
end
