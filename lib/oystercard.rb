# Oystercard class
class Oystercard
  attr_reader :balance, :history

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @limit = MAXIMUM_BALANCE
    @minimum = MINIMUM_BALANCE
    @history = []
  end

  def top_up(amount)
    raise "maximim balance of £#{@limit} exceeded" if balance + amount > @limit
    @balance += amount
  end

  def touch_in(entry_station)
    raise 'insufficient funds available' if balance < @minimum
    @history << entry_station
  end

  def touch_out(exit_station)
    deduct(@minimum)
    @history << exit_station
  end

  def in_journey?
    history.length.odd?
  end

  private

  def deduct(amount)
    @balance -= amount
  end

end
