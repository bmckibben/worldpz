class DropColumn01 < ActiveRecord::Migration
  def change
    remove_column :recipe_steps, :step_id
  end
end