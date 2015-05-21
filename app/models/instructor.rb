class Instructor < ActiveRecord::Base
  has_many :Schedules
  has_many :Awards
  has_many :Courses, through: :Schedules
  has_many :Categories, through: :Courses
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def full_name
    name + " " + surname
  end
end
