class Move < ActiveRecord::Base

  belongs_to :game
  belongs_to :subject
  delegate :initials, :to => :subject, :allow_nil => true
  scope :valid, where(:is_error => false)
  scope :invalid, where(:is_error => true)
  scope :subject, where("subject_position IS NOT NULL")
#  validates_presence_of :subject_position, :move_timestamp, :game_id, :subject_id
  #validates_presence_of :prompt_timestamp, :board_state


  def check_if_error!
    self.is_error  = (game.moves.where(subject_position: self.subject_position).length > 0 || 
                     game.moves.where(computer_position: self.subject_position).length > 0 ||
                     TTT.new(state: game.state, dimension: game.dimension).winner) ? true : false
    puts "Eval: #{(game.moves.where(subject_position: self.subject_position).length > 0 || 
                     game.moves.where(computer_position: self.subject_position).length > 0 ||
                     TTT.new(state: game.state, dimension: game.dimension).winner)
    }"

    puts 
    puts "Previous Subject Moves: #{game.moves.where(subject_position: self.subject_position).length > 0 }"
    puts "Precious Computer Moves: #{game.moves.where(computer_position: self.subject_position).length > 0}"
    puts "Winner: #{ TTT.new(state: game.state, dimension: game.dimension).winner}"
                 
    puts "Is Error: #{self.is_error}"
    is_error
  end

  def compute_response!
   puts ""
   puts "Winner: #{ TTT.new(state: game.state, dimension: game.dimension).winner}"
    if !check_if_error!
self.computer_position = nil

puts game.state.inspect
ttt = TTT.new(state: game.state, dimension: game.dimension)
      ttt.state[subject_position - 1 ] = 'X'

    if ttt.move_available?
      puts "got here"
      
          the_decider = rand(10)
          
          if the_decider > 5
          self.strategy = "minimax"
          self.computer_position = ttt.next_move

          else
          ttt.state.reverse!
          self.computer_position = game.dimension * game.dimension + 1 - ttt.next_move if ttt.next_move


          self.strategy = "minimax_r"
          end
    end
    end
    self.save!

  end

  def inter_move_interval
    move_timestamp.to_i - prompt_timestamp.to_i if !prompt_timestamp.blank?

  end

  def inter_success_interval
      all_moves = game.moves
      previous_moves = all_moves.reject { | a_move| a_move.id >= self.id }
      errors = previous_moves.reverse.take_while { |a_move| a_move.is_error == true }
      isi =  move_timestamp.to_i - errors.last.prompt_timestamp.to_i if errors.first
      return isi || inter_move_interval
   end

  def is_error?
    is_error
  end

  def expanded_data
    attributes.values + [ initials, inter_move_interval, inter_success_interval, game.experimental_condition.name, game.dimension]
  end 
end
