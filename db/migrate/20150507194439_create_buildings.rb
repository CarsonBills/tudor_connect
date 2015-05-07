class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :borough
      t.string :owner
      t.integer :stories
      t.integer :units

      t.timestamps
    end
  end
end
