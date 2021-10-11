require 'ruby2d'
require_relative 'lines'

SQUARE_SIZE = 40

class Board
	attr_reader :board

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
	end

	def change_turn

	end

	def draw_lines(lines)
		lines.make_grid
	end

	def set_ship(x,y)
		if @size == 's' || @size == nil
			@player_1.board[[x,y]] = true
			@player_1.board[[x , y - 1]] = true
		elsif @size == 'm'
			@player_1.board[[x,y]] = true
			@player_1.board[[x , y - 1]] = true
			@player_1.board[[x , y + 1]] = true
		elsif @size == 'l'
			@player_1.board[[x , y - 2]] = true
			@player_1.board[[x , y - 1]] = true
			@player_1.board[[x,y]] = true
			@player_1.board[[x , y + 1]] = true
			@player_1.board[[x , y + 2]] = true
		end
	end

	def draw_ships(ship)
		@player_1.board.keys.each do |x,y|
			ship.make_ship(x, y)
		end
	end

	def size(size)
		@size = size
	end
end