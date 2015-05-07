class CreateBuildingsTable < ActiveRecord::Migration
  def change
    create_table :buildings_tables do |t|
      t.string :address
      t.string :borough
      t.string :type
      t.integer :stories
      t.integer :units
    end
  end
end
