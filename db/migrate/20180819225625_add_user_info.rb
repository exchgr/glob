class AddUserInfo < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.string :name

      t.string :username
      t.index :username, unique: true

      t.text :bio
    end
  end
end
