require 'docking_station'

describe DockingStation do
  subject(:docking_station) {described_class.new}

  it { is_expected.to respond_to :release_bike }

  it "gets a bike and checks if it works" do
    bike = Bike.new
    expect(bike).to be_working   
  end

  it "it is not releasing a broken bike" do 
    broken_bike = Bike.new(false)
    expect(broken_bike.working?).to eq(false)
  end 

  it { is_expected.to respond_to :bikes}

  it { is_expected.to respond_to(:dock).with(1).arguments }

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end
  it 'returns faulty bike' do
    bike_faulty = Bike.new(false)
    expect(bike_faulty.working?).to eq(false) 
  end

  it 'is going to seperate not working bikes from working bikes' do 
      bike_faulty = Bike.new(false)
    expect(subject.dock(bike_faulty)).to eq([bike_faulty])

  end 

describe 'Error messages' do 

  it "doesn't release bikes when there aren't any available" do
    expect{ subject.release_bike }.to raise_error "NO BIKES!"
  end

  it "return an error when docking stations are 20" do
    stub_const("DEFAULT_CAPACITY", 20)
    DEFAULT_CAPACITY.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error "Docking Stations are full"
  end

end 

  it "returns capacity to be equal 15" do
    docking_station = DockingStation.new(15)
    expect(docking_station.capacity).to eq 15
  end




end
