class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :total, precision: 8, scale: 2
      t.decimal :discount, precision: 8, scale: 2
      t.decimal :shipping, precision: 8, scale: 2
      t.string :status
      t.string :status_payment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
