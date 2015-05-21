class Testimonial < ActiveRecord::Base
  has_attached_file :video,
      styles: {
        :medium => {
            :geometry => "300x300#",
            :format => 'jpg',
            :time => 10}},
      processors: [:ffmpeg]
  validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
end
