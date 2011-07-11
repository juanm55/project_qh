# == Schema Information
# Schema version: 20110709030344
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)
#  place_id   :integer(4)
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base

attr_accessible :title, :content

belongs_to :user
belongs_to :place

default_scope :order => 'comments.created_at DESC'

validates_presence_of :title, :content#, :user_id, :place_id

validates_length_of :content,
                    :within => 20..200

validates_length_of :title,
                    :within => 4..20


end
