class Ship 
	attr_reader :size

	def initialize(size)
		@size = size
	end

	def make_ship(x, y)
		Square.new(
			color: 'black',
			x: x * @size,
			y: y * @size,
			size: @size
		)
	end
end