class Api::InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all.order(:name)
  end
  
  def show
    @instructor = Instructor.find(params[:id])
  end
  
  def of_the_month
    @instructors = InstructorOfTheMonth.all.order(:name).map do |i|
      i.instructor
    end
  end
  
  def tweets
    username = Instructor.find(params[:id]).tw_username
    
    raise ActionController::RoutingError.new('Not Found') if !username
    
    timeline = Api::TW_CLIENT.user_timeline(username, :count => 5)
    
    render json: timeline
  end
end
