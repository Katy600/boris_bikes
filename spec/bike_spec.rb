require 'bike'
describe Bike do
  it 'responds to working' do 
  	bike = Bike.new
  	expect(bike).to be_working
  end  
end
