require 'docking_station'

describe DockingStation do
  it { should respond_to(:release_bike) }
end

describe 'release_bike' do
  it 'should return an instance of the Bike class' do
    station = DockingStation.new
    expect(station.release_bike).to be_an_instance_of(Bike)
  end
end

describe 'dock' do
  it 'should return bike' do
    bike = Bike.new
    docking_station = DockingStation.new
    expect(docking_station.dock(bike)).to eq(bike)
  end
end

describe 'attr_reader' do
  it 'should return an instance of bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to eq(bike)
  end
end
