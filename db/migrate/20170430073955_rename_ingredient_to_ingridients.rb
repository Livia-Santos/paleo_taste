class RenameIngredientToIngridients < ActiveRecord::Migration[5.0]
  def change
    rename_table :ingrediets, :ingredients
  end
end
