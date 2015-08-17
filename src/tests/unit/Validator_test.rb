require 'minitest/autorun'
require_relative '../../web/model/Validator.rb'

class TestValidator < MiniTest::Test

  def setup
    @validator = Validator.new
  end

  def test_that_2uio_is_not_a_valid_float
    assert_equal(false, @validator.is_float('2uio'))
  end

  def test_that_289_is_a_valid_float
    assert_equal(true, @validator.is_float('289'))
  end

  def test_that_25point35_is_a_valid_float
    assert_equal(true, @validator.is_float('25.35'))
  end

  def test_that_24point4_is_a_valid_positive_number
  	assert_equal(true, @validator.is_positive_number('24.4'))
  end

  def test_that_0_is_not_a_valid_positive_number
  	assert_equal(false, @validator.is_positive_number('0'))
  end  

  def test_that_negative_point001_is_not_a_valid_positive_number
  	assert_equal(false, @validator.is_positive_number('-.001'))
  end

end
