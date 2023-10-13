class CreateRecipeSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_steps do |t|
      t.integer :recipe_id
      t.integer :step_order
      t.string :step_instruction

      t.timestamps null: false
    end
  end
end
