json.extract! order, :id, :user_id, :total, :sub_total, :taxes, :statu, :note, :active, :created_at, :updated_at
json.url order_url(order, format: :json)
