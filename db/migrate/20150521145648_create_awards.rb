class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.text :description
      t.attachment :image
      
      t.references :Instructor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
