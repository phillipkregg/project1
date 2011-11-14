class Room < ActiveRecord::Base
  belongs_to :zone, :dependent => :destroy
end
