class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      flash[:success] = "You successfully signed up"
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    if @student.update(student_params)
      flash[:success] = "Student information was updated successfully."
      redirect_to @student
    else
      render 'edit'
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end
end
