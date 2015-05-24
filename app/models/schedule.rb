class Schedule < ActiveRecord::Base
  belongs_to :course, inverse_of: :schedules
  belongs_to :instructor, inverse_of: :schedules
end