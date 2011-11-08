class Contact < ActiveRecord::Base
  has_many :contact_types
  has_many :roles
  
  paginates_per 5
  
end
