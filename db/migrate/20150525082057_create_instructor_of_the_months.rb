class CreateInstructorOfTheMonths < ActiveRecord::Migration
  def self.up
    create_table :instructor_of_the_months do |t|
      t.text :description
      t.references :instructor, index: true

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :instructor_of_the_months
  end
end
