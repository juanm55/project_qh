# == Schema Information
# Schema version: 20110701022536
#
# Table name: cmoneys
#
#  id         :integer(4)      not null, primary key
#  name       :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Cmoney < ActiveRecord::Base

  attr_accessible :name
  
  has_many :places
  
  validates :name,  :presence => true,
                    :uniqueness => true
end
