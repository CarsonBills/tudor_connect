class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users_tables do |t|
      t.string :username
      t.string :password_hash
      t.string :building_id
      t.string :email
    end
  end
end
