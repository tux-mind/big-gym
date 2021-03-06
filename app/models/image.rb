class Image < ActiveRecord::Base
  belongs_to :category, inverse_of: :images
  belongs_to :course, inverse_of: :images
  belongs_to :room, inverse_of: :images
  belongs_to :instructor, inverse_of: :images
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
