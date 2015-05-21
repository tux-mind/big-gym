class CreateRoomImages < ActiveRecord::Migration
  def change
    create_table :room_images do |t|
      t.string :name
      t.attachment :image
      t.references :Room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
