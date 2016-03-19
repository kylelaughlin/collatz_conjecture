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

end
