class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :last_name
      t.string :first_name
      t.string :city
      t.string :job_type
      t.string :insurance_company
      t.string :age
      t.datetime :loss_date
      t.string :job_num
      t.string :job_status
      t.string :dispatch_status
      t.string :caller
      t.string :occupant
      t.string :production_manager
      t.string :crew_chief

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
