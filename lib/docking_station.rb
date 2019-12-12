require_relative 'bike'

class DockingStation
  def initialize
    #attr_reader :x
    @docked_bikes = [ ]
  end
  def release_bike
    Bike.new
  end
end