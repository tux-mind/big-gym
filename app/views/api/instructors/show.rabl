object @instructor
attributes :name, :description, :qualification
node(:full_name) { |i| i.full_name }
node(:image) { |i| i.image.url }
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
