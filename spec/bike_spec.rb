require_relative '../lib/bike'

describe Bike do
    it { should respond_to(:working) }

    # it 'bike is broken' do
    #   bike = Bike.new
    #   expect(bike.broken).to eq true
    # end

    describe '#report_bike' do
      it 'bike broken' do
        #station = DockingStation.new
        # broken_bike = station.dock(bike)
        bike = Bike.new
        expect(bike).to be_broken
      end
    end
end
