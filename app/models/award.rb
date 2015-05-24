class Award < ActiveRecord::Base
  belongs_to :instructor, inverse_of: :awards
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
