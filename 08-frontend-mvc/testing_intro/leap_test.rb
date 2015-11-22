require 'minitest/autorun'
require 'minitest/reporters'

# Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new ### optional

def leap_year?(num)
 return "you're an idiot" if num.class == String

 if num%4 == 0 && num%100 != 0  
    true
 elsif num%400 == 0 
    true
 elsif num%4 == 0 && num%100 == 0 && num%400 != 0 
    false
  elsif num%4 != 0 
    false
  end
end 


class LeapYearTest < MiniTest::Test

  # test case method has to start with test
  def test_year_2000
    assert_equal true, leap_year?(2000)
  end

  def test_year_1996
    assert_equal true, leap_year?(1996)
  end

  def test_year_8
    assert_equal true, leap_year?(8)
  end

  def test_string
    assert_equal "you're an idiot", leap_year?('abc')
  end

end