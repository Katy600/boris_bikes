require './lib/bike'
class DockingStation

  def initialize
    @bike_rack = []
  end

  def release_bike
    Bike.new
  end

  def return_bike(bike_name)
    @bike_rack << (bike_name)
  end

  attr_reader :bike_rack

end
