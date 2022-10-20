json.extract! image, :id, :name, :real_name, :user_id, :imagable_id, :imagable_type, :created_at, :updated_at
json.url image_url(image, format: :json)
