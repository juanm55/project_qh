# == Schema Information
# Schema version: 20110701022536
#
# Table name: cplaces
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Cplace < ActiveRecord::Base
  
  attr_accessible :name, :description
  
  has_many :categorizations
  has_many :objects, :through => :categorizations
  
  default_scope :order => 'name'
  
  validates :name,          :presence => true,
                            :uniqueness => { :case_sensitive => false}
  
  validates :description, :presence => true
end
