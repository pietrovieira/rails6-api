class CreateUserInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_infos do |t|
      t.references :user, index: {:unique=>true}, null: false, foreign_key: true
      t.string :name
      t.string :slug
      t.string :indentifyId
      t.date :birthday
      t.boolean :isActive

      t.timestamps
    end
  end
end
