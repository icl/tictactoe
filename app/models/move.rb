class Move < ActiveRecord::Base

  validates_presence_of :subject_position, :move_timestamp, :game_id, :subject_id
  #validates_presence_of :prompt_timestamp, :board_state

include TicTacToe

  def compute_response!
    self.computer_position = 2
  end


end
