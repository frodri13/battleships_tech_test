require_relative 'board'

set background: 'white', width: SQUARE_SIZE * 16, height: SQUARE_SIZE * 12

board = Board.new

update do
	clear 
	board.draw_lines
	board.draw_ships
end

on :mouse_down do |event|
	board.set_ship(event.x / SQUARE_SIZE, event.y / SQUARE_SIZE)
end

show