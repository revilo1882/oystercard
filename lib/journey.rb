class Journey
    MINIMUM_FARE = 1
    PENALTY_FARE = 6
  attr_reader :entry_station, :exit_station

  def initialize

  end

  def start(station)
    @entry_station = station.name
  end

  def finish(station)
    @exit_station = station.name
  end

  def complete?
    !!@entry_station && !!@exit_station
  end

  def fare
  complete? ? MINIMUM_FARE : PENALTY_FARE
  end

end
