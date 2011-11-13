require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

