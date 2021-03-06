class Api::InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all.order(:name)
  end
  
  def show
    @instructor = Instructor.find(params[:id])
  end
  
  def of_the_month
    @instructors = InstructorOfTheMonth.all.map do |i|
      i.instructor
    end
    
    @instructors.sort_by!{ |e| e.name.downcase }
  end
  
  def tweets
    username = Instructor.find(params[:id]).tw_username
    
    raise ActionController::RoutingError.new('Not Found') if !username
    
    timeline = Api::TW_CLIENT.user_timeline(username, :count => 5)
    
    render json: timeline
  end
  
  def posts
    username = Instructor.find(params[:id]).fb_id
    
    raise ActionController::RoutingError.new('Not Found') if !username
    
    render json: Api::FB_CLIENT.get_connections(username, "feed")[0,4]
  end
end
