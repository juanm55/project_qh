# == Schema Information
# Schema version: 20110701022536
#
# Table name: places
#
#  id          :integer(4)      not null, primary key
#  user_id     :integer(4)
#  name        :string(255)
#  cplace_id   :integer(4)
#  cmoney_id   :integer(4)
#  copen_id    :integer(4)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Place < ActiveRecord::Base
  attr_accessible :name, :cplace_id, :cmoney_id, :copen_id, :description
  
  belongs_to :user
  belongs_to :cplace
  belongs_to :cmoney
  belongs_to :copen
  
  has_many :comments, :dependent => :destroy
  
  default_scope :order => 'name'
  
  #algunas valideaciones basicas para que todo funcione
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false}
  
  
  validates :cplace_id, :presence => true
  
  
  validates :cmoney_id, :presence => true
  
  
  validates :copen_id, :presence => true
end
