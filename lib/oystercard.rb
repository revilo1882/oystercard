# Oystercard class
class Oystercard
  attr_reader :balance, :history, :journey

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

  def initialize
    @balance = 0
    @history = []

  end

  def top_up(amount)
    raise "maximim balance of £#{MAXIMUM_BALANCE} exceeded" if balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

  def touch_in(station)
    raise 'insufficient funds available' if balance < MINIMUM_BALANCE
    @journey = {}
  end

  def touch_out(station)
    deduct(MINIMUM_BALANCE)
    @journey[:exit_station] = station
    adds_journey
  end

  def in_journey?
    !!journey
  end

  private

  def deduct(amount)
    @balance -= amount
  end

  def adds_journey
    @history << journey
    @journey = nil
  end

end
