class Api::CoursesController < ApplicationController
  def index
    @courses = Course.all.order(:name)
  end
  
  def show
    @course = Course.find(params[:id])
  end
end
