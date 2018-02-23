require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :current_bike

  def initialize
    @docked_bikes = []
  end

  def create_bike
    Bike.new
  end

  def release_bike
    if empty?
      raise 'No bikes in docking station'
    else
      @docked_bikes.pop
    end
  end

  def dock(bike)
    raise 'dock is full' if full?
    @current_bike = bike
    @docked_bikes << @currentbike
    @current_bike
  end

  private
    def full?
      @docked_bikes.count >= DEFAULT_CAPACITY
    end

  private
    def empty?
      @current_bike == nil
    end
end
