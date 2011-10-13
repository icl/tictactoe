require './lib/TicTacToe/tictactoe'
require './lib/TicTacToe/ttt'
ActionView::Base.field_error_proc = proc { |input, instance| input }
