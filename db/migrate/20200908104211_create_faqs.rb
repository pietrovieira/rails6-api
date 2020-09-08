class CreateFaqs < ActiveRecord::Migration[6.0]
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :response
      t.boolean :isActive
      t.integer :order

      t.timestamps
    end
  end
end
