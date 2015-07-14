attributes :id, :name
node(:image) { |r| image_url(r.image.url(:medium)) }
