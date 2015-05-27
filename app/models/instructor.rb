class Instructor < ActiveRecord::Base
  has_many :schedules, inverse_of: :instructor
  has_many :awards, inverse_of: :instructor
  has_many :courses, through: :schedules
  has_many :categories, through: :courses
  has_many :images, inverse_of: :instructor
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def full_name
    name + " " + surname
  end
  
  rails_admin do
    object_label_method do
      :full_name
    end
  end
end
