object @room
attributes :name, :description

node(:thumb) { |r| image_url(r.image.url(:medium)) }
node(:image) { |r| image_url(r.image.url) }

node(:map) { |r| image_url(r.map.url(:medium)) }
node(:map_full) { |r| image_url(r.map.url) }

child(:courses) {
  extends "courses/preview"
}

child(:images) {
  extends "images/base"
}
    
