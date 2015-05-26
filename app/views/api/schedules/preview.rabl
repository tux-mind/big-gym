attributes :dow
node(:from) { |s| s.from.strftime("%T") }
node(:to) { |s| s.to.strftime("%T") }
child(:course) {
  attributes :id, :name
}
child(:instructor) {
  attributes :id
  node(:full_name) { |i| i.full_name }
}
