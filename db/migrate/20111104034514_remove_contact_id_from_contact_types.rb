class RemoveContactIdFromContactTypes < ActiveRecord::Migration
  def self.up
    remove_column :contact_types, :contact_id
  end

  def self.down
    add_column :contact_types, :contact_id, :integer
  end
end
