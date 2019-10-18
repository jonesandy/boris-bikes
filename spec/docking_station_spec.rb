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
    expect { subject.dock_bike( :argument ) }.to_not raise_error
  end

  it "does dock_bike return argument passed to it" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.docked_bikes).to include(bike)
  end

  it 'does not release a bike when dock is empty' do 
    bike = Bike.new
    expect { subject.release_bike }.to raise_error 'no bikes available'
  end

  it 'raises error when full' do
    5.times do 
      subject.dock_bike(Bike.new)
    end
    expect{ subject.dock_bike(Bike.new) }.to raise_error 'station full' 
  end
end