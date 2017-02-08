json.extract! recipe_image, :id, :recipe_id, :image_url, :created_at, :updated_at
json.url recipe_image_url(recipe_image, format: :json)