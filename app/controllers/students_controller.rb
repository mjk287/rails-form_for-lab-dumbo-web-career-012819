class StudentsController < ApplicationController
  def index
  end

  def new
  end

  def edit
    get_student
  end

  def show
    get_student
  end

  def create
    @student = Student.create(student_params)

    redirect_to(student_path(@student))
  end

  def update
    get_student
    @student.update(student_params)

    redirect_to(student_path(@student))
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
