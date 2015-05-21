class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
