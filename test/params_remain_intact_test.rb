require 'test_helper'

class ParamsRemainIntactTest < ActiveSupport::TestCase

  def test_existing_extension_option
    assert_equal "Polyandry", wives(:one).husbands.love
  end

  def test_existing_extension_block
    assert_equal "Polygyny", husbands(:one).wives.love
  end
end