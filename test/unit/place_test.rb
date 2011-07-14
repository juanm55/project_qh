require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
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

