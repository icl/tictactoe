
class TTT
  attr_accessor :state, :dimension
  extend TicTacToe
  def initialize options = {}
    
    @dimension = options[:dimension] || 3
    @state = options[:state] || Array.new.fill('-', 0, dimension_squared)
    @conversions = {0 => 'O', 1 => 'X', 2 => false}
  end


  def random_move
    if !winner
    move_index = @state.each_with_index.collect { | v, i |  i if v.match /-/ }.compact.shuffle.first

    move_index + 1 if move_index
    end

  end

  def over?
    tie? || winner
  end

  def winner
    @conversions[ TTT.winner? state_string, @dimension, @dimension, @dimension, 0,0 ]
  end

        def available_positions
      @state.each_with_index.collect { | v, i |  i  if v.match('-') }.compact
    end

  def move_available?
    available_positions.count > 0
  end
  
  def tie?
    TTT.tie?( state_string, @dimension, @dimension, @dimension, 0, 0 ) == 1 
  end

  def state_string
     @state.join('')
  end

  def dimension_squared
    @dimension * @dimension
  end

  def next_state
         if !winner

     TTT.make_move(state_string, @dimension,@dimension, @dimension,0,0).split('')
         else
           @state
         end
  end

  def next_move
    if !winner
      next_state.each_with_index do | mark, index|
        return index + 1 if mark != @state[index]
      end
    end
    return false
  end


  def make_move!
    @state = next_state
  end
end
