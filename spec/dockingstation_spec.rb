require_relative '../lib/docking_station'
DEFAULT_CAPACITY = 20

describe DockingStation do
  it { should respond_to(:release_bike) }


describe '#create_bike' do
  it 'should return an instance of the Bike class' do
    station = DockingStation.new
    expect(station.create_bike).to be_an_instance_of(Bike)
  end
end

describe '#dock' do
  it 'should return bike' do
    bike = Bike.new
    docking_station = DockingStation.new
    expect(docking_station.dock(bike)).to eq(docking_station.current_bike)
  end
  it 'raises exception when dock is full' do
    station = DockingStation.new
    # bike = station.create_bike
    expect  { (DEFAULT_CAPACITY + 1).times{ station.dock(Bike.new) } }.to raise_error('dock is full')
  end
end

describe '#attr_reader' do
  it 'should return an instance of bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.current_bike).to eq(bike)
  end
end

describe '#release_bike' do
  it 'raises exception if no bikes' do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error('No bikes in docking station')
  end
end

it 'default capacity is 20' do
  station = DockingStation.new
  expect(station.capacity).to eq DEFAULT_CAPACITY
end
end
