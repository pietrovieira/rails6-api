class CreateSubCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_categories do |t|
      t.string :label
      t.string :slug
      t.boolean :isActive
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
