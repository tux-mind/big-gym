class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.attachment :video

      t.timestamps null: false
    end
  end
end
