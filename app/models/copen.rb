# == Schema Information
# Schema version: 20110704014839
#
# Table name: copens
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Copen < ActiveRecord::Base

  attr_accessible :name
  
  has_many :places
  
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false}
end
