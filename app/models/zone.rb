class Zone < ActiveRecord::Base
  has_many :rooms
  
  def to_s
    "#{zone_name}"
  end
  
end
