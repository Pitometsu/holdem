class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,    unique: true, null: false
      t.string :password,               null: false
      t.string :nickname, unique: true
      t.string :full_name
      t.timestamps null: false
    end

    add_index :users, [:email, :nickname]
  end
end
