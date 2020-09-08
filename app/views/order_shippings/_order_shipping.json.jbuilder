json.extract! order_shipping, :id, :order_id, :address, :num, :neighborhood, :city, :uf, :created_at, :updated_at
json.url order_shipping_url(order_shipping, format: :json)
