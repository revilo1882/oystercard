require 'pry'
require_relative 'oystercard.rb'
require_relative 'station.rb'

card =Oystercard.new
station1 = Station.new(:bank, 2)
station2 = Station.new(:kings_cross, 1)
card.top_up(10)

card.touch_in(station1)
journey.start

binding.pry
