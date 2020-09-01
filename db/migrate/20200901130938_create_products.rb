class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :subTitle
      t.decimal :priceBefore
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
