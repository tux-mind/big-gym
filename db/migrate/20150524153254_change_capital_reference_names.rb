class ChangeCapitalReferenceNames < ActiveRecord::Migration
  def self.up
    remove_reference :awards, :Instructor, index: true
    add_reference :awards, :instructor, index: true
    
    remove_reference :courses, :Category, index: true
    remove_reference :courses, :Room, index: true
    add_reference :courses, :category, index: true
    add_reference :courses, :room, index: true
    
    remove_reference :room_images, :Room, index: true
    add_reference :room_images, :room, index: true
    
    remove_reference :schedules, :Course, index: true
    remove_reference :schedules, :Instructor, index: true
    add_reference :schedules, :course, index: true
    add_reference :schedules, :instructor, index: true
  end
  
  def self.down
    remove_reference :awards, :instructor, index: true
    add_reference :awards, :Instructor, index: true
    
    remove_reference :courses, :category, index: true
    remove_reference :courses, :room, index: true
    add_reference :courses, :Category, index: true
    add_reference :courses, :Room, index: true
    
    remove_reference :room_images, :room, index: true
    add_reference :room_images, :Room, index: true
    
    remove_reference :schedules, :course, index: true
    remove_reference :schedules, :instructor, index: true
    add_reference :schedules, :Course, index: true
    add_reference :schedules, :Instructor, index: true
  end
end
