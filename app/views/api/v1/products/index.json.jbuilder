json.array!(@products) do |product|
  json.id product.id
  json.name product.name
  json.url api_product_url(product, format: :json)
  json.images product.images do |image|
    json.name image.name || ''
    json.thumb_url image.image.url(:thumb)
    json.original_url image.image.url(:original)
  end
end