class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.attachment :image
      t.references :category, index: true
      t.references :course, index: true
      t.references :room, index: true
      t.references :instructor, index: true

      t.timestamps null: false
    end
    drop_table :course_images
    drop_table :room_images
    drop_table :category_images
  end
end
