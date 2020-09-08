class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :label
      t.boolean :isActive

      t.timestamps
    end
  end
end
