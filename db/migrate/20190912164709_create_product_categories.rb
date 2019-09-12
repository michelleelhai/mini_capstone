class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.string :product_id
      t.string :integer
      t.integer :category_id

      t.timestamps
    end
  end
end
