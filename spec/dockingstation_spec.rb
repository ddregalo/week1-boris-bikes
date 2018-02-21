require 'docking_station'

describe DockingStation do
  it { should respond_to(:release_bike) }
end

describe 'release_bike' do
  it "should return an instance of the Bike class" do 
    station = DockingStation.new
    expect(station.release_bike).to be_an_instance_of(Bike)  
  end
end


#  it "should return new instance of bike class" do
#    station = DockingStation.new
#    @bike = station.release_bike
#    expect(station.release_bike).to eq(@bike)
#  end
