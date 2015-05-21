class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
