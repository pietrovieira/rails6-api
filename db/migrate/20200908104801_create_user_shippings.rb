class CreateUserShippings < ActiveRecord::Migration[6.0]
  def change
    create_table :user_shippings do |t|
      t.string :zipcode
      t.string :address
      t.string :num
      t.references :user, null: false, foreign_key: true
      t.references :neighborhood, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.string :uf
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
