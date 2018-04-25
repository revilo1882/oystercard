# Oystercard class

require_relative 'journey.rb'
class Oystercard
  attr_reader :balance, :history, :journey

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1

  def initialize(journey = Journey.new)
    @balance = 0
    @history = []
    @journey = journey
  end

  def top_up(amount)
    raise "maximim balance of £#{MAXIMUM_BALANCE} exceeded" if balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

  def touch_in(station)
    raise 'insufficient funds available' if balance < MINIMUM_BALANCE
    @journey.start(station)
  end

  def touch_out(station)
    deduct(MINIMUM_BALANCE)
    @journey.finish(station)
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
    @history << { entry_station: @journey.entry_station, exit_station: @journey.exit_station }
    @journey = nil
  end

end
