require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it { is_expected.to respond_to :docked_bikes }

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

end