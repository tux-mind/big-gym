attributes :id, :name
node(:image) { |r| r.image.url(:thumb) }
