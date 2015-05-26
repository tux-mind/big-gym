object @course
attributes :name, :description
node(:image) { |c| c.image.url }

child(:level) {
  extends "levels/preview"
}

child (:images) {
  extends "images/base"
}

child (:instructors) {
  extends "instructors/preview"
}

child (:room) {
  extends "rooms/preview"
}

child (:schedules) {
  extends "schedules/preview"
}
