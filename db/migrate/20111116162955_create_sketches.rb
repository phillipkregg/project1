class CreateSketches < ActiveRecord::Migration
  def self.up
    create_table :sketches do |t|
      t.string :sketch_name
      t.timestamps
    end
  end

  def self.down
    drop_table :sketches
  end
end
