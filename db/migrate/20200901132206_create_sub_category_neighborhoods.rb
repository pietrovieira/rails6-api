class CreateSubCategoryNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_category_neighborhoods do |t|
      t.references :SubCategory, null: false, foreign_key: true
      t.references :Neighborhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
