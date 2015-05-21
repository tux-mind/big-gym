class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :dow
      t.time :from
      t.time :to
      t.references :Course, index: true, foreign_key: true
      t.references :Instructor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
