class AddEquipmentFlagToImages < ActiveRecord::Migration
  def change
    add_column :images, :equipment, :boolean
  end
end
