require 'docking_station'

describe DockingStation do


  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "docked bikes" do
    expect(subject.docked_bikes).to be_a(Array)
  end

  it "should accept a argument" do
    station = DockingStation.new
    expect { station.dock_bike( :argument ) }.to_not raise_error
  end

  it "does dock_bike return argument passed to it" do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect(station.docked_bikes).to include(bike)
  end

  it 'does not release a bike when dock is empty' do 
    station = DockingStation.new
    bike = Bike.new
    expect { station.release_bike }.to raise_error 'no bikes available'
  end
end