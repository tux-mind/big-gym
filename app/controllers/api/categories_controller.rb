class Api::CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:name)
  end
  
  def show
    @category = Category.find(params[:id])
    @courses = @category.courses
    @instructors = @category.instructors
  end
end
