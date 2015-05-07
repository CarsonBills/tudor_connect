class ChangeBuildingTypeToOwner < ActiveRecord::Migration
  def change
    rename_column :buildings, :type, :owner
  end
end
