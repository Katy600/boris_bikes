require 'docking_station'

describe DockingStation do
  before :each do
    @station = DockingStation.new
    @bike = @station.release_bike
  end
  it "should get a bike" do
    station = DockingStation.new
    expect(@bike).to be_an_instance_of Bike
  end

  it "should get a working bike" do
    expect(@bike).not_to be_working
  end

end
