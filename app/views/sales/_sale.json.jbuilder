json.extract! sale, :id, :value, :sale_type, :user_id, :active, :created_at, :updated_at
json.url sale_url(sale, format: :json)
