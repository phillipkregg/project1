class Job < ActiveRecord::Base
  
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  validates :city, :presence => true
  validates :job_type, :presence => true
  validates :loss_date, :presence => true
  
end
