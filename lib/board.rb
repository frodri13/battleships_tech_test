require 'ruby2d'

SQUARE_SIZE = 40

class Board
	attr_reader :board

	def initialize
		@board = {}
	end

	def draw_lines
		(Window.width / SQUARE_SIZE).times do |x|
			Line.new(
				width: 1,
				color: 'gray',
				y1: 0,
				y2: Window.height,
				x1: x * SQUARE_SIZE,
				x2: x * SQUARE_SIZE,
			)
		end

		(Window.height / SQUARE_SIZE).times do |y|
			Line.new(
				width: 1,
				color: 'gray',
				x1: 0,
				x2: Window.width,
				y1: y * SQUARE_SIZE,
				y2: y * SQUARE_SIZE,
			)
		end
	end

	def set_ship(x,y)
		@board[[x,y]] = true
		@board[[x , y - 1]] = true
		puts "Click: x: #{x}, y: #{y}"
		puts "Grid: #{@board}"
	end

	def draw_ships
		@board.keys.each do |x,y|
			Square.new(
				color: 'black',
				x: x * SQUARE_SIZE,
				y: y * SQUARE_SIZE,
				size: SQUARE_SIZE
			)
		end
	end
end