class CreateNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :neighborhoods do |t|
      t.string :label
      t.boolean :isActive
      t.boolean :isDelivery
      t.references :City, null: false, foreign_key: true

      t.timestamps
    end
  end
end
