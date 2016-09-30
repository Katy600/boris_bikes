require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity, :faulty_bikes


	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@faulty_bikes = []
		@capacity = capacity
	end

	def release_bike
		 fail "NO BIKES!" if empty?
		 @bikes.pop

	end

	def dock(bike)
		raise "Docking Stations are full" if full?

		if bike.working?		
			@bikes << bike
		else 
			@faulty_bikes << bike 
		end 

	end

private
 def full?
	 @bikes.length >= @capacity
 end

private
def empty?
	@bikes.count < 1
end

end
