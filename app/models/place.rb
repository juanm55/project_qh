class Place < ActiveRecord::Base
  attr_accessible :name, :cmoney_id, :copen_id, :description
  
  belongs_to :user
  belongs_to :cmoney
  belongs_to :copen
  
  has_many :categorizations
  has_many :cplaces, :through => :categorizations
  
  has_many :addresses
  
  default_scope :order => 'name'
  
  #algunas valideaciones basicas para que todo funcione
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false}
  
  validates :cmoney_id, :presence => true
  validates :copen_id, :presence => true
end

# == Schema Information
#
# Table name: places
#
#  id          :integer(4)      not null, primary key
#  user_id     :integer(4)
#  name        :string(255)
#  cmoney_id   :integer(4)
#  copen_id    :integer(4)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

