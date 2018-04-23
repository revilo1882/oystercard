class Oystercard

  attr_reader :balance

  MAXIMUM_BALANCE = 90

  def initialize
    @balance = 0
    @limit = MAXIMUM_BALANCE
  end


  def top_up(amount)
    fail "maximim balance of £#{@limit} exceeded" if @balance + amount > @limit
    @balance += amount
  end

end
