class CreateCourseLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :name
      t.string :color
      t.text :description

      t.timestamps null: false
    end
    add_reference :courses, :level, index: true 
  end
end
