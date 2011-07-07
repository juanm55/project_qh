class Copen < ActiveRecord::Base

  attr_accessible :name
  
  has_many :places
  
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false}
end
