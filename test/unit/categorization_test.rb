require 'test_helper'

class CategorizationTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

