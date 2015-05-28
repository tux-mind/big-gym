collection @images
node(:thumb) { |i| i.image.url(:medium) }
node(:image) { |i| i.image.url }