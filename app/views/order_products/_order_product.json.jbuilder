json.extract! order_product, :id, :order_id, :label, :price_unit, :qty, :created_at, :updated_at
json.url order_product_url(order_product, format: :json)
