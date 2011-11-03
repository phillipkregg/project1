class ContactType < ActiveRecord::Base
  belongs_to :contact
  
  scope :contact_order, order('contact_type ASC')
  
end
