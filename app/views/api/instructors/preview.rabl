attributes :id, :name
node(:summary) { |i| truncate( i.description, length: 100 ) }
node(:full_name) {|i| i.full_name }
node(:image) { |i| i.image.url(:thumb) }
