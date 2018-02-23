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
    if full?
      raise 'dock is full'
    else
      @current_bike = bike
      @docked_bikes << bike
      @current_bike
    end
  end

  private
    def full?
      @docked_bikes.count >= DEFAULT_CAPACITY ? true : false
      p @docked_bikes
    end

  private
    def empty?
      @current_bike == nil ? true : false
    end


end
