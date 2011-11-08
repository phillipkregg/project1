class Contact < ActiveRecord::Base
  has_many :contact_types
  has_many :roles
  
  accepts_nested_attributes_for :contact_types
  
  paginates_per 5
  
 
  
end
