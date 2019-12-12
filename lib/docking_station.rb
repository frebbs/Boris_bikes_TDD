require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    raise 'No stock' unless  stock
    @bike
  end

  def dock_bike(bike)
    raise 'Docking station full' if full?
    @docked_bikes.push(bike)
  end

  private
  def stock
    @docked_bikes.count > 0 ? true : false
  end

  def full?
    @docked_bikes.count >= @capacity ? true : false
  end
end