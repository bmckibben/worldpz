json.extract! recipe, :id, :category_id, :recipe_name, :recipe_description, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)