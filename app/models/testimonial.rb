

class Testimonial < ActiveRecord::Base
  has_attached_file :video,
      styles: {
        medium: {
            geometry: "300x300!",
            format: 'jpg',
            time: -> (attachment) {
                attachment.instance.method(:get_middle)}}},
      processors: [ :transcoder ]
  validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
  
  def get_middle(meta, options)
    meta[:duration] / 2
  end
end
