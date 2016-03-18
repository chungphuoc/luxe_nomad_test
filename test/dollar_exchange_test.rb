require "minitest/autorun"
require_relative "../dollar_exchange"
include DollarExchange

class TestDollarExchange < Minitest::Test
  def test_dollar_break_down
    assert_equal({:quarters=>20, :dimes=>2, :nickels=>0, :cents=>3}, dollar_break_down(5.23))
  end

end