class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def new
  end

  def edit
    get_class

  end

  def show
    get_class
  end

  def create
    @class = SchoolClass.create(class_params)

    redirect_to(school_class_path(@class))
  end

  def update
    get_class
    # byebug
    @class.update(class_params)

    redirect_to(school_class_path(@class))
  end

  private

  def get_class
    @class = SchoolClass.find(params[:id])
  end

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
