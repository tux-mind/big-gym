object @room
attributes :name, :description

node(:thumb) { |r| r.image.url(:medium) }
node(:image) { |r| r.image.url }

node(:map) { |r| r.map.url(:medium) }
node(:map_full) { |r| r.map.url }

child(:courses) {
  extends "courses/preview"
}

child(:images) {
  extends "images/base"
}
    
