class CreateRecipeFood < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_food do |t|
      t.integer :quantity
      t.references :recipe, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
