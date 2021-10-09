require 'board'

RSpec.describe Board do
	 it 'has 10 columns' do
		 expect(subject.grid.length).to eq(10)
	 end

	 it 'has 10 rows per column' do
		 expect(subject.grid[4].length).to eq(10)
	 end
end