json.extract! order, :id, :total, :discount, :shipping, :status, :status_payment, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
