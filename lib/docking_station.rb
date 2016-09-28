
class DockingStation

  def initialize
    @bike_rack = []
    bike = Bike.new
  end

  def release_bike
    if @bike_rack != []
    	@bike_rack.shift
    else
    	raise 'Unable to dispense bikes as none available'
    end
  end

  def return_bike(bike_name)
    raise 'Station full' if @bike_rack.length > 0
    @bike_rack << (bike_name)
  end

  attr_reader :bike_rack

end
