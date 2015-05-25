class CreateCategoryImages < ActiveRecord::Migration
  def change
    create_table :category_images do |t|
      t.string :name
      t.references :category, index: true
      t.attachment :image
      
      t.timestamps null: false
    end
  end
end
