require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @docked_bikes = []
  end

  def create_bike
    Bike.new
  end

  def release_bike
    raise 'No bikes in docking station' if @bike.nil?
  end

  def dock(bike)
    if @docked_bikes.count >= 20
      raise 'dock is full'
    else
      @bike = bike
      @docked_bikes << @bike
      @bike
    end
  end
end
