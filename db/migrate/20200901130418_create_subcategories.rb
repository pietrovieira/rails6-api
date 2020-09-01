class CreateSubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :subcategories do |t|
      t.references :category, null: false, foreign_key: true
      t.string :label
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
