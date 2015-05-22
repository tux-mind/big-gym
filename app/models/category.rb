class Category < ActiveRecord::Base
  has_many :Courses
  has_many :Instructors, through: :Courses
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def thumb
    image.url(:thumb)
  end
end
