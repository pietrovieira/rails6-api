class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.string :productName
      t.decimal :productPrice
      t.references :Order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
