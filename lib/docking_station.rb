require_relative 'bike'

class DockingStation

  attr_reader :docked_bikes
  
  def initialize
    @docked_bikes = []
  end
  

  def release_bike
    if @docked_bikes.empty?
      raise 'no bikes available'
    else
      @docked_bikes.pop
    end
  end

  def dock_bike(bike_name)
    if @docked_bikes.count >= 5
      raise 'station full'
    else
      docked_bikes.push(bike_name)
    end
  end
end