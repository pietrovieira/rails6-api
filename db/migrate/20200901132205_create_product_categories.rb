class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.references :Product, null: false, foreign_key: true
      t.references :SubCategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
