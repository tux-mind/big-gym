class CategoryImage < ActiveRecord::Base
  belongs_to :category, inverse_of: :images
  
  has_attached_file :image, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
