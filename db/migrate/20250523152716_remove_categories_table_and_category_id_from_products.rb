class RemoveCategoriesTableAndCategoryIdFromProducts < ActiveRecord::Migration[8.0]
  def change
    remove_reference :products, :category, foreign_key: true
    drop_table :categories
  end
end