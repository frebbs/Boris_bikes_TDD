require_relative 'bike'

class DockingStation
  attr_reader :docked_bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike(bike)
    if !stock
      raise 'no stock'
    elsif @broken_bikes.include? bike
      raise 'This bike is broken'
    else
      @docked_bikes.pop
    end
  end

  def dock_bike(bike)
    raise 'Docking station full' if full?
    if !bike.working?
      @broken_bikes.push(bike)
    else
      @docked_bikes.push(bike)
    end
  end

  private
  def stock
    @docked_bikes.count > 0 ? true : false
  end

  def full?
    @docked_bikes.count >= @capacity ? true : false
  end


end