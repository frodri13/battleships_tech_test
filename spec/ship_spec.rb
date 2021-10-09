require 'ship'

RSpec.describe Ship do
	
	it 'can be a small ship' do
		ship = Ship.new("s")

		expect(ship.size).to eq("s")
	end
end