require './lib/bike'
class DockingStation
  def release_bike
    Bike.new
  end

  def return_bike(bike)
  	@returned_bike = bike
  end
end
