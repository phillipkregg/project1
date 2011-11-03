class CreateContactTypes < ActiveRecord::Migration
  def self.up
    create_table :contact_types do |t|
      t.string :contact_type
      t.integer :contact_id

      t.timestamps
    end
    add_index :contact_types, :contact_id
  end

  def self.down
    drop_table :contact_types
    remove_index :contact_types, :column => :contact_id
  end
end
