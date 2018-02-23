require 'bike'

describe Bike do
    it { should respond_to(:working?) }

    it 'bike is broken' do
      bike = Bike.new
      expect(bike.broken?).to eq true
    end
end
