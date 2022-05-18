class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.decimal :cook_time, null: false
      t.decimal :prep_time, null: false
      t.string :ingredients, null: false
      t.decimal :ratings
      t.string :cuisine
      t.string :category
      t.string :author
      t.string :image

      t.timestamps
    end
  end
end
