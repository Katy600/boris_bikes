require 'docking_station'
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
end
