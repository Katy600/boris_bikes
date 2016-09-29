require_relative 'bike'

class DockingStation

  attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		 fail "NO BIKES!" if @bikes.empty?
		 @bikes.pop

	end

	def dock(bike)
		raise "Docking Stations are full" if @bikes.count >= 20
		@bikes << bike
	end

end
