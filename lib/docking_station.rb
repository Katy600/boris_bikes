
require_relative 'bike'

class DockingStation

  attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		 fail "NO BIKES!" if empty?
		 @bikes.pop

	end

	def dock(bike)
		raise "Docking Stations are full" if full?
		@bikes << bike
	end

private
 def full?
	 @bikes.length >= 20
 end

private
def empty?
	@bikes.count < 1
end

end
