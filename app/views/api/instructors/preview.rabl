attributes :id, :name
node(:summary) { |i| truncate( i.description, length: 100, escape: false ) }
node(:full_name) {|i| i.full_name }
node(:image) { |i| image_url(i.image.url(:thumb)) }
