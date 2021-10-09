require 'ship'

RSpec.describe Ship do
	
	it 'can be a small ship' do
		ship = Ship.new("s")

		expect(ship.size).to eq("s")
	end

	it 'can be a medium ship' do
		ship = Ship.new("m")

		expect(ship.size).to eq("m")
	end

	it 'can be a large ship' do
		ship = Ship.new("l")

		expect(ship.size).to eq("l")
	end
end