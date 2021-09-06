class StudentsController < ApplicationController
  def index
    @students = Student.order(last_name: :asc)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end


  private
  def student_params
    params.require(:student).permit(:last_name, :first_name, :matricule, :sexe, :birth_date)
  end
end
