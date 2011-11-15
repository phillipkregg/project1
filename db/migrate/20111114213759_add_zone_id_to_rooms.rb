class AddZoneIdToRooms < ActiveRecord::Migration
  def self.up
    add_column :rooms, :zone_id, :integer
    add_index :rooms, :zone_id
  end

  def self.down
    remove_index :rooms, :zone_id
    remove_column :rooms, :zone_id
  end
end
