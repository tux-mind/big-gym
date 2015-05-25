class AddQualificationToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :qualification, :text
  end
end
