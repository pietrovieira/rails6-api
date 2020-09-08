json.extract! product, :id, :title, :sub_title, :price_before, :price, :sub_category_id, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
