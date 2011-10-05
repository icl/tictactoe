class Move < ActiveRecord::Base

  belongs_to :game

  validates_presence_of :subject_position, :move_timestamp, :game_id, :subject_id
  #validates_presence_of :prompt_timestamp, :board_state


  def check_if_error
    self.is_error  = (game.moves.where(subject_position: self.subject_position).length > 0 || 
                     game.moves.where(computer_position: self.subject_position).length > 0 ||
                     TTT.new(state: game.state, dimension: game.dimension).winner)
                     
      
    is_error
  end

  def compute_response!
    check_if_error

    ttt = TTT.new(state: game.state, dimension: game.dimension)
    if !is_error && !ttt.over?
      
      puts "game state"
      puts ttt.state.join('')

      puts 'add players move'
      ttt.state[subject_position - 1 ] = 'X'
      puts ttt.state.join('')


      self.computer_position = ttt.next_move
    end
          self.save!

  end

  def is_error?
    is_error
  end

  
end