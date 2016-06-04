require 'test_helper'

class MashupTest < ActiveSupport::TestCase
  test "add_favorite will increase the favorites attribute" do
    mashup = mashups(:mashup_one)
    assert_equal 2, mashup.favorites

    mashup.add_favorite
    assert_equal 3, mashup.favorites
  end
end
