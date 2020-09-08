class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.references :order, null: false, foreign_key: true
      t.string :label
      t.decimal :price_unit, precision: 8, scale: 2
      t.integer :qty

      t.timestamps
    end
  end
end
