require_relative 'board'
require_relative 'ship'

set background: 'white', width: SQUARE_SIZE * 16, height: SQUARE_SIZE * 12

board = Board.new

update do
	clear 
	board.draw_lines(Lines.new(SQUARE_SIZE))
	board.draw_ships(Ship.new(SQUARE_SIZE))
end

on :mouse_down do |event|
	board.set_ship(event.x / SQUARE_SIZE, event.y / SQUARE_SIZE)
end

show