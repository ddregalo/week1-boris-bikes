require 'docking_station'

describe DockingStation do
  describe '.release_bike' do
    it "expects docking station to release bike" do
      expect(DockingStation).to respond_to '.release_bike'
    end 
  end
end
