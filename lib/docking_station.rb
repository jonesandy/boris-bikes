require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :docked_bikes
  
  def initialize
    @docked_bikes = []
  end
  

  def release_bike
    raise 'no bikes available' if empty?
    @docked_bikes.pop
  end

  def dock_bike(bike_name)
    raise 'station full' if full?
    @docked_bikes << bike_name
  end

  private

  def full?
    @docked_bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.empty?
  end
end