class AddSubcategoryIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :subcategory_id, :integer
  end
end
