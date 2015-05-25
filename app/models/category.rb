class Category < ActiveRecord::Base
  has_many :courses, inverse_of: :category
  has_many :instructors, through: :courses
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
