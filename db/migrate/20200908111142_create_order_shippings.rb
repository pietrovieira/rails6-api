class CreateOrderShippings < ActiveRecord::Migration[6.0]
  def change
    create_table :order_shippings do |t|
      t.references :order, null: false, foreign_key: true
      t.string :address
      t.string :num
      t.string :neighborhood
      t.string :city
      t.string :uf

      t.timestamps
    end
  end
end
