class ContactType < ActiveRecord::Base
  has_many :contacts
    
  scope :contact_order, order('contact_type ASC')
  
  def to_s
    "#{contact_type}"
  end
  
  
end
