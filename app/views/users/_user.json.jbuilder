json.extract! user, :id, :name, :password, :mail, :address, :image, :created_at, :updated_at
json.url user_url(user, format: :json)
