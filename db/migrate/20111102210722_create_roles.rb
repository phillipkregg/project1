class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :role
      t.integer :contact_id

      t.timestamps
    end
    add_index :roles, :contact_id
  end

  def self.down
    drop_table :roles
    remove_index :roles, :column => :contact_id
  end
end
