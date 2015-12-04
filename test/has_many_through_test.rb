require 'test_helper'

class HasManyThroughTest < ActiveSupport::TestCase
  include WritersTest
  include ConcatTest
  
  setup do
    @object = husbands(:one)
  end
end
