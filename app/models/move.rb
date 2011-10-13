class Move < ActiveRecord::Base

  belongs_to :game

#  validates_presence_of :subject_position, :move_timestamp, :game_id, :subject_id
  #validates_presence_of :prompt_timestamp, :board_state


  def check_if_error!
    self.is_error  = (game.moves.where(subject_position: self.subject_position).length > 0 || 
                     game.moves.where(computer_position: self.subject_position).length > 0 ||
                     TTT.new(state: game.state, dimension: game.dimension).winner)
                     
      
    is_error
  end

  def compute_response!
    check_if_error!

    if !is_error

    ttt = TTT.new(state: game.state, dimension: game.dimension)

      
      ttt.state[subject_position - 1 ] = 'X'

      self.computer_position =
       
      the_decider = rand(10)
      
      if the_decider > 4
      self.computer_position = ttt.next_move
      self.strategy = "minimax"
      else
      self.computer_position = ttt.random_move
      self.strategy = "random"
      end
    end
    self.save!

  end

  def is_error?
    is_error
  end

  
end
