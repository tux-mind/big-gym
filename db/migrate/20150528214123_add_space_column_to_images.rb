class AddSpaceColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :space, :boolean
  end
end
