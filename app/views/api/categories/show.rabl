object @category
attributes :id, :name, :description
node(:thumb) { |c| c.image.url(:medium) }
node(:image) { |c| c.image.url }
child(:courses) {
  extends "courses/preview"
}
child(:instructors) {
  extends "instructors/preview"
}
child(:images) {
  extends "images/base"
}
