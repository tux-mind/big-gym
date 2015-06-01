class Api::InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end
  
  def show
    @instructor = Instructor.find(params[:id])
  end
  
  def of_the_month
    @instructors = InstructorOfTheMonth.all.map do |i|
      i.instructor
    end
  end
end
