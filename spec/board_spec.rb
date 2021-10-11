require 'board'

RSpec.describe Board do

	it 'can set a small ship in the board' do
		subject.set_ship(0,0)
		expect(subject.board[[0,0]]).to be_truthy
	end
end