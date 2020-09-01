json.extract! product, :id, :title, :subTitle, :priceBefore, :price, :description
json.picture_url url_for(product.picture) if product.picture.attached?
json.url product_url(product, format: :json)
