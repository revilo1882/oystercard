class Journey

  attr_reader :entry_station

  def initialize

  end

  def start(station)
    @entry_station = station.name
  end


end
