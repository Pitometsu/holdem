class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.belongs_to :user
      t.integer :win
      t.integer :loss
      t.timestamps null: false
    end
  end
end
