require 'board'

RSpec.describe Board do

	it 'can set a small ship in the board' do
		subject.set_ship(0,0)
		expect(subject.board[[0,0]]).to be_truthy
		expect(subject.board[[0, -1]]).to be_truthy
	end

	it 'can set a medium ship in the board' do
		subject.size("m")
		subject.set_ship(0,0)
		expect(subject.board[[0,0]]).to be_truthy
		expect(subject.board[[0, -1]]).to be_truthy
		expect(subject.board[[0, +1]]).to be_truthy
	end

	it 'can set a large ship in the board' do
		subject.size("l")
		subject.set_ship(0,0)
		expect(subject.board[[0, -2]]).to be_truthy
		expect(subject.board[[0, -1]]).to be_truthy
		expect(subject.board[[0, 0]]).to be_truthy
		expect(subject.board[[0, +1]]).to be_truthy
		expect(subject.board[[0, +2]]).to be_truthy
	end
end