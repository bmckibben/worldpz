class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :category_id
      t.string :recipe_name
      t.string :recipe_description
      t.integer :active,           null: false, default: 0
      t.integer :sort_order
      t.integer :prep_minutes
      t.integer :cook_minutes
      t.integer :servings_quantity      
      t.timestamps null: false
    end
  end
end
