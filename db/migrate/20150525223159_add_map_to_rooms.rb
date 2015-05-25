class AddMapToRooms < ActiveRecord::Migration
  def change
    add_attachment :rooms, :map
  end
end
