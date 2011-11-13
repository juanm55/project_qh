#encoding: utf-8
class Address < ActiveRecord::Base
  attr_accessible :name, :description, :place_id, :main_venue
  
  belongs_to :place
  
  validates_presence_of :name, :place_id
  
end

# == Schema Information
#
# Table name: addresses
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  place_id    :integer(4)
#  main_venue  :boolean(1)
#  created_at  :datetime
#  updated_at  :datetime
#

