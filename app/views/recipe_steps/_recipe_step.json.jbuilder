json.extract! recipe_step, :id, :recipe_id, :step_id, :step_order, :step_instruction, :created_at, :updated_at
json.url recipe_step_url(recipe_step, format: :json)