class AddMenuTypeToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :menu_type, :string
  end
end
