class CreateSubCategoryNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_category_neighborhoods do |t|
      t.references :sub_category, null: false, foreign_key: true
      t.references :neighborhood, null: false, foreign_key: true
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
