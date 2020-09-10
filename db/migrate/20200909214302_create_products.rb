class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :slug
      t.string :sub_title
      t.decimal :price_before, precision: 8, scale: 2
      t.decimal :price, precision: 8, scale: 2
      t.references :sub_category, null: false, foreign_key: true
      t.references :user_info, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
