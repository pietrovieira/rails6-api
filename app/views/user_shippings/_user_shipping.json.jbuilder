json.extract! user_shipping, :id, :zipcode, :address, :num, :user_id, :neighborhood_id, :city_id, :uf, :lat, :long, :created_at, :updated_at
json.url user_shipping_url(user_shipping, format: :json)
