require 'test_helper'

class StatusValidatorTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, StatusValidator
  end
  test "klass should have default_values method" do
    assert Test.method_defined? :default_values
  end


  test "default value for test model should be equal to active" do
    test = Test.create!
    assert_equal :active,test.status
  end

  test "test model should have statuses method" do
    assert_equal [:active,:deleted],Test.statuses
  end

end
