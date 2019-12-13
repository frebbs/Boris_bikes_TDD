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

  def release_bike(bike = nil)
    if !stock || bike == nil
      raise 'No stock'
    elsif @broken_bikes.include? bike
      raise 'This bike is broken'
    else
      @docked_bikes.sample.pop
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
    @docked_bikes.count > 0 && (@docked_bikes.count + @broken_bikes.count) <= @capacity? true : false
  end

  def full?
    @docked_bikes.count + @broken_bikes.count >= @capacity ? true : false
  end


end