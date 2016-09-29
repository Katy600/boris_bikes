
require_relative 'bike'

class DockingStation

  attr_reader :bikes

	def release_bike
		 fail "NO BIKES!" unless @bikes
		 Bike.new
		#bike.working? == true
	end

	def dock(bike)
		fail "Docking Stations are full" unless (@bikes == nil)
		@bikes = bike
	end

end
