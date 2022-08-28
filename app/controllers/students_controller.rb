class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      flash[:success] = "You successfully signed up"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:success] = "Student information was updated successfully."
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email)
  end
end
