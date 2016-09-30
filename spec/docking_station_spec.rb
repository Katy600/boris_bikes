require 'docking_station'
<<<<<<< HEAD
require 'bike'

describe DockingStation do
  before :each do
    @station = DockingStation.new
    @bike = Bike.new
  end

  it "should get a bike" do
    expect(@bike).to be_an_instance_of Bike
  end

  it "should get a working bike" do
    expect(@bike).to be_working
  end

  describe 'docking a bike' do
    it "should return a bike" do
      expect(@station).to respond_to :return_bike
    end

    it "add a new instance variable for bike" do
      expect(@station.return_bike(@bike)).to eq([@bike])
      expect(@station.bike_rack).to eq ([@bike])
    end
  end

  describe 'Should raise an exception' do
    it "raises an exception when bike rack is empty" do
      expect {@station.release_bike}.to raise_error('Unable to dispense bikes as none available')
    end
  end

  describe 'Should allow adding no more than 20 bikes' do
    it "Allows adding 20 bikes" do
      expect(20.times{@station.return_bike Bike.new}).to eq 20
    end

    it "Does not allow adding 21 bikes" do
      expect {(21.times{@station.return_bike Bike.new})}.to raise_error('Station full')
    end
  end
=======

describe DockingStation do
	subject(:docking_station) {described_class.new}

	it { is_expected.to respond_to :release_bike }

	it "gets a bike and checks if it works" do
		bike = Bike.new
		subject.dock(bike)
    subject.release_bike
		expect(bike).to be_working
	end

	it { is_expected.to respond_to :bikes}

	it { is_expected.to respond_to(:dock).with(1).arguments }

	it "returns docked bikes" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bikes).to eq [bike]
	end

	it "doesn't release bikes when there aren't any available" do
		expect{ subject.release_bike }.to raise_error "NO BIKES!"
	end



	it "return an error when docking stations are 20" do
		stub_const("DEFAULT_CAPACITY", 20)
		DEFAULT_CAPACITY.times { subject.dock Bike.new }
		expect { subject.dock Bike.new }.to raise_error "Docking Stations are full"
	end

<<<<<<< HEAD
>>>>>>> a139791e0f60490350bf2d5da4489dccc8341af6
=======
	it "returns capacity to be equal 15" do
	 	docking_station = DockingStation.new(15)
		expect(docking_station.capacity).to eq 15
	end

>>>>>>> a1f9ba55d61a381b41833ca62ce111ac9bf6781f
end
