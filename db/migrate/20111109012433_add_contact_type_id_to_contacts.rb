class AddContactTypeIdToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :contact_type_id, :integer
    add_index  :contacts, :contact_type_id
  end

  def self.down
    remove_column :contacts, :contact_type_id
    remove_index  :contacts, :contact_type_id
  end
end
