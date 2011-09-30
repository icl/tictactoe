class Move < ActiveRecord::Base
include TicTacToe

  def compute_response!
    self.computer_position = 2
  end


end
