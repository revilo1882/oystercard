# Oystercard class
class Oystercard
  attr_reader :balance, :in_use

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @limit = MAXIMUM_BALANCE
    @in_use = false
    @minimum = MINIMUM_BALANCE
  end

  def top_up(amount)
    raise "maximim balance of £#{@limit} exceeded" if @balance + amount > @limit
    @balance += amount
  end

  def touch_in
    raise 'insufficient funds available' if @balance < @minimum
    @in_use = true
  end

  def touch_out
    @in_use = false
    deduct(@minimum)
  end

  def in_journey?
    @in_use
  end

  private

  def deduct(amount)
    @balance -= amount
  end

end
