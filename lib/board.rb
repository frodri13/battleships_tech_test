require 'ruby2d'
require_relative 'lines'

SQUARE_SIZE = 40

class Board
	attr_reader :board

	def initialize
		@board = {}
	end

	def draw_lines(lines)
		lines.make_grid
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