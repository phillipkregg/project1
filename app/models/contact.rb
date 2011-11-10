class Contact < ActiveRecord::Base
  belongs_to :contact_type
    
  paginates_per 5
  
  validates :first_name, :presence => true
  validates :last_name, :presence => true
           
            
  
 
  
end
