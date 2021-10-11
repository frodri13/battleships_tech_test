require 'ruby2d'
require_relative 'lines'

SQUARE_SIZE = 40

class Board
	attr_reader :board

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
		@turn = 1
		@board = {}
	end

	def change_turn
		if @turn == 1
			@player_1.board = @board
			@board = {}
		elsif @turn == 2
			@player_2.board = @board
			@board = {}
			@board = @player_1.board
		elsif @turn > 2 && @turn % 2 == 0
			@board = @player_1.board
		elsif @turn > 2 && @turn % 2 != 0
			@board = @player_2.board
		end
		@turn += 1
		puts "#{@turn}"
	end

	def draw_lines(lines)
		lines.make_grid
	end

	def set_ship(x,y)
		if @size == 's' || @size == nil
			@board[[x,y]] = true
			@board[[x , y - 1]] = true
		elsif @size == 'm'
			@board[[x,y]] = true
			@board[[x , y - 1]] = true
			@board[[x , y + 1]] = true
		elsif @size == 'l'
			@board[[x , y - 2]] = true
			@board[[x , y - 1]] = true
			@board[[x,y]] = true
			@board[[x , y + 1]] = true
			@board[[x , y + 2]] = true
		end
	end

	def draw_ships(ship)
		@board.keys.each do |x,y|
			ship.make_ship(x, y)
		end
	end

	def size(size)
		@size = size
	end
end