class Calculator
  attr_reader :total

  def initialize(total=0)
    @total = total
  end

  def add(num)
    @total += num
    num
  end

  def subtract(num)
    @total -= num
    num
  end

  def clear
    @total = 0
  end
end