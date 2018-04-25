class Journey

  attr_reader :entry_station, :exit_station

  def initialize

  end

  def start(station)
    @entry_station = station.name
  end

  def finish(station)
    @exit_station = station.name
  end

end
