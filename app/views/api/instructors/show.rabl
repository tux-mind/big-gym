object @instructor
attributes :name, :description, :qualification, :tw_username
node(:full_name) { |i| i.full_name }
node(:image) { |i| i.image.url }
node(:thumb) { |i| i.image.url(:medium) }
child(:courses) {
  extends "courses/preview"
}
child(:categories) {
  extends "categories/preview"
}
child(:awards) {
  attribute :name, :description
  node(:thumb) {|a| a.image.url(:thumb)}
  node(:image) {|a| a.image.url }
}
child(:images) {
  extends "images/base"
}
