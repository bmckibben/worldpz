class ChangeColumnName01 < ActiveRecord::Migration
  def change
    rename_column :recipe_ingredient_links, :recipe_ingredient_units_id, :recipe_ingredients_unit_id
  end
end