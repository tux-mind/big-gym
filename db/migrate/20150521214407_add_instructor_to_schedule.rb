class AddInstructorToSchedule < ActiveRecord::Migration
  def self.up
    add_reference :schedules, :Instructor, index: true
  end
  
  def self.down
    remove_reference :schedules, :Instructor, index: true
  end
end
