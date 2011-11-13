class Categorization < ActiveRecord::Base
belongs_to :cplace
belongs_to :place
end

# == Schema Information
#
# Table name: categorizations
#
#  id         :integer(4)      not null, primary key
#  place_id   :integer(4)
#  cplace_id  :integer(4)
#  maincplace :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#

