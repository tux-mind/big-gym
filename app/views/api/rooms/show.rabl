object @room
attributes :name, :description

node(:map) { |r| r.map.url(:medium) }
node(:map_full) { |r| r.map.url }

child(:courses) {
  extends "courses/preview"
}

child(:images) {
  extends "images/base"
}
    
