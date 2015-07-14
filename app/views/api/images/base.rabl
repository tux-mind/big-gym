attribute :name
node(:thumb) { |i| image_url(i.image.url(:thumb)) }
node(:image) { |i| image_url(i.image.url) }
