class RemoveContactTypeFromContacts < ActiveRecord::Migration
  def self.up
    remove_column :contacts, :contact_type
  end
  

  def self.down
    add_column :contacts, :contact_type, :string
  end
end
