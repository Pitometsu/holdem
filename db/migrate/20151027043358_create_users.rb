class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :nickname
      t.string :full_name
      t.timestamps null: false
    end
  end
end
