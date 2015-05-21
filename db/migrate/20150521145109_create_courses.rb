class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.attachment :image
      t.references :Category, index: true, foreign_key: true
      t.references :Room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
