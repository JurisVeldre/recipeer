class CreateFridgeIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :fridge_ingredients do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
