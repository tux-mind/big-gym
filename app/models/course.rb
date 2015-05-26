class Course < ActiveRecord::Base
  belongs_to :category, inverse_of: :courses
  belongs_to :room, inverse_of: :courses
  belongs_to :level, inverse_of: :courses
  has_many :schedules, inverse_of: :course
  has_many :instructors, through: :schedules
  has_many :images, class_name: "CourseImage", inverse_of: :course
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
