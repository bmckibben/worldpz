json.extract! recipe, :id, :recipe_id, :recipe_name, :recipe_description, :recipe_category, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)