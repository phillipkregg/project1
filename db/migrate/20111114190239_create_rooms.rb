class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :room_name
      t.integer :room_level
      t.string :level_type
      t.string :water_class
      t.string :water_category
      t.integer :flooring_affected
      t.string :flooring_type
      t.string :carpet_type
      t.string :pad_type
      t.string :is_pad_restorable
      t.text :preexisting_conditions
      t.boolean :structure_scope_complete
      t.boolean :has_damaged_contents
      t.boolean :content_scope_completed
      t.integer :length
      t.integer :width
      t.integer :height
      t.string :room_shape
     

      t.timestamps
    end
    
  end

  def self.down
    drop_table :rooms
    
  end
end
