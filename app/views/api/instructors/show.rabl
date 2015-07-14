object @instructor
attributes :name, :description, :qualification, :tw_username
node(:full_name) { |i| i.full_name }
node(:image) { |i| image_url(i.image.url) }
node(:thumb) { |i| image_url(i.image.url(:medium)) }
child(:courses) {
  extends "courses/preview"
}
child(:categories) {
  extends "categories/preview"
}
child(:awards) {
  attribute :name, :description
  node(:thumb) {|a| image_url(a.image.url(:thumb))}
  node(:image) {|a| image_url(a.image.url) }
}
child(:images) {
  extends "images/base"
}
