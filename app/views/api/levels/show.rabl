object @level
attributes :name, :color, :description
child(:courses) {
  extends "courses/preview"
}
