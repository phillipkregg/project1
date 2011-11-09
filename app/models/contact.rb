class Contact < ActiveRecord::Base
  belongs_to :contact_type
  
  
  paginates_per 5
  
 
  
end
