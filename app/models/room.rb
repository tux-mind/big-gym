class Room < ActiveRecord::Base
  has_many :images, class_name: "RoomImage", inverse_of: :room
  has_many :courses, inverse_of: :room
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :map, :styles => {:medium => "300x300>"}
  validates_attachment_content_type :map, :content_type => /\Aimage\/.*\Z/
end
