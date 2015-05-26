

class Testimonial < ActiveRecord::Base
  
  has_attached_file :video,
      styles: {
        medium: {
            geometry: "300x300!",
            format: 'jpg',
            time: lambda {|attachment|
                    lambda {|meta, options|
                      meta[:duration]/2}}}},
      processors: [ :transcoder ]
  validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
  
end
