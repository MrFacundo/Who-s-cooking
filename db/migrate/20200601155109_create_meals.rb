class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :difficulty
      t.integer :prep_time
      t.text :description
      t.integer :price
      t.references :restaurant, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true
      t.string :video

      t.timestamps
    end
  end
end
