class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_num
      t.string :email
      t.string :address1
      t.string :address2
      t.string :contact_type
      t.string :role
      t.string :manager

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
