class Board
	attr_reader :grid

	def initialize
		@grid = Array.new(10) {Array.new(10)}
	end
end