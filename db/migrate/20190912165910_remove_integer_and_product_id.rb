class RemoveIntegerAndProductId < ActiveRecord::Migration[6.0]
  def change
    remove_column :product_categories, :product_id, :string
    remove_column :product_categories, :integer, :string
    add_column :product_categories, :product_id, :integer
  end
end
