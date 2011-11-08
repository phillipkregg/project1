class ContactType < ActiveRecord::Base
  belongs_to :contact
  
  accepts_nested_attributes_for :contact
  
  scope :contact_order, order('contact_type ASC')
  
  def to_s
    "#{contact_type}"
  end
  
  
end
