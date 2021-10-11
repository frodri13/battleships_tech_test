class Lines 
	def initialize(size)
		@size = size
	end

	def make_grid
		(Window.width / @size).times do |x|
			Line.new(
				width: 1,
				color: 'gray',
				y1: 0,
				y2: Window.height,
				x1: x * @size,
				x2: x * @size,
			)
		end

		(Window.height / @size).times do |y|
			Line.new(
				width: 1,
				color: 'gray',
				x1: 0,
				x2: Window.width,
				y1: y * @size,
				y2: y * @size,
			)
		end
	end
end