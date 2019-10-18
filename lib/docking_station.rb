require_relative 'bike'

class DockingStation

  attr_reader :docked_bikes
  
  def initialize
    @docked_bikes = []
  end
  

  def release_bike
    raise 'no bikes available' if @docked_bikes.empty?
    @docked_bikes.pop
  end

  def dock_bike(bike_name)
    raise 'station full' if @docked_bikes.count >= 20
    @docked_bikes << bike_name
  end
end