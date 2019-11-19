json.extract! product, :id, :name, :product_category_id, :description, :price, :image, :active, :created_at, :updated_at
json.url product_url(product, format: :json)
