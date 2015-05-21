class AddSurnameToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :surname, :string
  end
end
