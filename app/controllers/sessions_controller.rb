class SessionsController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]

  def new
  end

  def create
    student = Student.find_by(email: params[:sessions][:email].downcase.strip)
    puts params[:sessions][:email].downcase.strip
    puts student
    if student && student.authenticate(params[:sessions][:password])
      flash[:notice] = "You successfully logged in"
      session[:student_id] = student.id
      redirect_to student
    else
      flash[:notice] = "Something wrong with logging info. Check entered email and password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:student_id] = nil
    flash[:notice] = "You successfully logged out"
    redirect_to '/login'
  end
end
