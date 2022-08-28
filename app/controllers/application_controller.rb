class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  helper_method :logged_in?, :current_user

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end
end
