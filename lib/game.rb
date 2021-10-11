require_relative 'board'
require_relative 'ship'
require_relative 'player'

set background: 'white', width: SQUARE_SIZE * 16, height: SQUARE_SIZE * 12

player_1 = Player.new
player_2 = Player.new

board = Board.new(player_1, player_2)

update do
	clear
	board.draw_lines(Lines.new(SQUARE_SIZE))
	board.draw_ships(Ship.new(SQUARE_SIZE))
end

on :mouse_down do |event|
	board.set_ship(event.x / SQUARE_SIZE, event.y / SQUARE_SIZE)
end

on :key_down do |event|
	if event.key == 'f'
		board.change_turn
	else
		board.size(event.key)
	end
	
end

show