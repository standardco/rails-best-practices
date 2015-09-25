json.array!(@products) do |product|
  json.id product.id
  json.name product.name
  json.url product_url(product, format: :json)
end