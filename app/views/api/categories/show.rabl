object @category
attributes :id, :name, :description
node(:thumb) { |c| image_url(c.image.url(:medium)) }
node(:image) { |c| image_url(c.image.url) }
child(:courses) {
  extends "courses/preview"
}
child(:instructors) {
  extends "instructors/preview"
}
child(:images) {
  extends "images/base"
}
