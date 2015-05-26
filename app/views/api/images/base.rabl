attribute :name
node(:thumb) { |i| i.image.url(:thumb) }
node(:image) { |i| i.image.url }
