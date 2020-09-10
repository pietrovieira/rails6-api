json.extract! product, :id, :title, :slug, :sub_title, :price_before, :price, :sub_category_id, :user_info_id, :description, :created_at, :updated_at
json.image_url 'https://static.toiimg.com/thumb/msid-72368849,width-800,height-600,resizemode-75,imgsize-793304,pt-32,y_pad-40/72368849.jpg'
json.url product_url(product, format: :json)
