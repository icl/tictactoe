class Move < ActiveRecord::Base
  include TicTacToe

  belongs_to :game

  validates_presence_of :subject_position, :move_timestamp, :game_id, :subject_id
  #validates_presence_of :prompt_timestamp, :board_state


  def check_if_error
    self.is_error  = game.moves.where(subject_position: self.subject_position).count > 0
  end

  def compute_response!
    check_if_error
    self.computer_position = 2 if !is_error?
  end

  def is_error?
    is_error
  end

end
