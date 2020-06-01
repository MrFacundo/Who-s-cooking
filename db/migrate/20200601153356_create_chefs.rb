class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
