attributes :dow
node(:from) { |s| s.from ? s.from.strftime("%H:%M") : "00:00" }
node(:to) { |s| s.to ? s.to.strftime("%H:%M") : "00:00" }
child(:course) {
  attributes :id, :name
}
child(:instructor) {
  attributes :id
  node(:full_name) { |i| i.full_name }
}
