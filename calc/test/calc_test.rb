gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/calc'

class CalculatorTest < Minitest::Test
  def test_it_exists
    calc = Calculator.new
    assert_equal "Calculator", calc.class.to_s
  end

  def test_add_1
    calc = Calculator.new
    assert_equal 1, calc.add(1)
  end

  def test_returns_total
    calc = Calculator.new
    calc.add(1)
    calc.add(1)
    assert_equal 2, calc.total
  end

  def test_subtract_1
    calc = Calculator.new
    calc.add(1)
    calc.add(1)
    calc.subtract(1)
    assert_equal 1, calc.total
  end

  def test_clear
    calc = Calculator.new
    calc.add(25)
    calc.clear
    assert_equal 0, calc.total
  end
end