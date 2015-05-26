attributes :id, :name
node(:summary) { |c| truncate(c.description, length: 100) }
node(:image) {|c| c.image.url(:thumb) }
