json.extract! recipe_category, :id, :category_id, :category_name, :created_at, :updated_at
json.url recipe_category_url(recipe_category, format: :json)