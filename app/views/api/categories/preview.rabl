attributes :id, :name
node(:summary) { |c| truncate(c.description, length: 100, escape: false) }
node(:image) {|c| image_url(c.image.url(:thumb)) }
