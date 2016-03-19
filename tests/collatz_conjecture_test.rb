require "test_helper"
require_relative "../lib/collatz_conjecture.rb"


class CollatzConjectureTest < Minitest::Test

  def test_method_when_number_even
    result = collatz_method(4)
    assert_equal(2,result)
  end

  def test_method_when_number_odd
    result = collatz_method(5)
    assert_equal(16,result)
  end

  def test_collatz_counter_when_number_is_even
    result = collatz(10)
    assert_equal(6,result)
  end

  def test_collatz_counter_when_number_is_odd
    result = collatz(3)
    assert_equal(7,result)
  end

  def test_find_minimum_iterations
    result = min_collatz_iterations(3,8)
    assert_equal(4,result)
  end
  

end
