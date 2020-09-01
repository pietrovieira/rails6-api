class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :label
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
