require 'bike'
<<<<<<< HEAD
describe Bike do
  it 'responds to working' do 
  	bike = Bike.new
  	expect(bike).to be_working
  end  
=======

describe Bike do
	it {is_expected.to respond_to :working?}
>>>>>>> a139791e0f60490350bf2d5da4489dccc8341af6
end
