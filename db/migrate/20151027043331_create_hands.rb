class CreateHands < ActiveRecord::Migration
  def change
    create_table :hands do |t|
      t.belongs_to :table
      t.timestamps null: false
    end
  end
end
