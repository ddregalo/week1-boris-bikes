require_relative "bike"

class DockingStation

  attr_reader :bike

#  def initialize
    #@docked_bikes = []
#  end

  def create_bike
    Bike.new
  end

  def release_bike
    if @bike == nil
      raise "No bikes in docking station"
    end
  end

  def dock(bike)
    @bike = bike
    #@docked_bikes << @bike
  end
end
