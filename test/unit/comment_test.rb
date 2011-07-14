require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
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

