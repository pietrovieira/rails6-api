class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.references :User, null: false, foreign_key: true
      t.string :name
      t.string :indentifyId
      t.date :birthday
      t.boolean :isActive
      t.string :street
      t.integer :num
      t.references :Neighborhood, null: false, foreign_key: true
      t.references :City, null: false, foreign_key: true
      t.string :uf

      t.timestamps
    end
  end
end
