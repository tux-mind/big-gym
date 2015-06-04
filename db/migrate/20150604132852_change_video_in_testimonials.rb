class ChangeVideoInTestimonials < ActiveRecord::Migration
  def self.up
    remove_attachment :testimonials, :video
    add_column :testimonials, :yid, :string
  end
  
  def self.down
    remove_column :testimonials, :yid, :string
    add_attachment :testimonials, :video
  end
end
