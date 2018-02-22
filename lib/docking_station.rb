require_relative 'bike'

class DockingStation
  attr_reader :current_bike

  def initialize
    @docked_bikes = []
  end

  def create_bike
    Bike.new
  end

  def release_bike
    raise 'No bikes in docking station' if @current_bike.nil?
    @docked_bikes.pop
  end

  def dock(bike)
    if @docked_bikes.count >= 20
      raise 'dock is full'
    else
      @current_bike = bike
      @docked_bikes << bike
      @current_bike
    end
  end
end
