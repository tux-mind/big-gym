object @category
attributes :id, :name, :description
child(:instructors) {
  extends "instructors/preview"
}
child(:images) {
  extends "images/base"
}
