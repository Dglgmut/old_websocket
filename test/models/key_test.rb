require 'test_helper'

class KeyTest < ActiveSupport::TestCase
  test "that the key model returns the respective value" do
    assert_equal Key.return_value_for_key('1'), keys(:one).value
  end
end
