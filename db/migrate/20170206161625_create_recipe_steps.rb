class CreateRecipeSteps < ActiveRecord::Migration
  def change
    create_table :recipe_steps do |t|
      t.integer :step_id
      t.integer :step_id
      t.integer :step_order
      t.string :step_instruction

      t.timestamps null: false
    end
  end
end
