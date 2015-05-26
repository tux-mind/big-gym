collection @testimonials
attribute :name
node(:video) { |t| t.video.url }
node(:thumb) { |t| t.video.url(:medium) }
