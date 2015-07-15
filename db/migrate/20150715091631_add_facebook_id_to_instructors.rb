class AddFacebookIdToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :fb_id, :string
  end
end
