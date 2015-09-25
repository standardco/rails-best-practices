json.extract! @product, :id, :name
json.images @product.images do |image|
  json.name image.name || ''
  json.thumb_url image.image.url(:thumb)
  json.original_url image.image.url(:original)
end