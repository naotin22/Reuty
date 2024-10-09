json.extract! product, :id, :name, :price, :explanation, :user_id, :product_class_id, :image, :sale, :created_at, :updated_at
json.url product_url(product, format: :json)
