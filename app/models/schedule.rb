class Schedule < ActiveRecord::Base
  belongs_to :Course
  belongs_to :Instructor
end
