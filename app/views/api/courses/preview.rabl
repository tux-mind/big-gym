attributes :id, :name
node(:image) {|c| c.image.url(:thumb) }
