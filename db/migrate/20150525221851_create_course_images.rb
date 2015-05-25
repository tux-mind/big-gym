class CreateCourseImages < ActiveRecord::Migration
  def change
    create_table :course_images do |t|
      t.string :name
      t.references :course
      t.attachment :image
      
      t.timestamps null: false
    end
  end
end
