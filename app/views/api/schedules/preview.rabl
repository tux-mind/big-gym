attributes :dow, :from, :to
child(:course) {
  attributes :id, :name
}
child(:instructor) {
  attributes :id
  node(:full_name) { |i| i.full_name }
}
