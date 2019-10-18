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
    docked_bikes.push(bike_name)
  end
end