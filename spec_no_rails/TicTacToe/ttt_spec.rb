require './spec_no_rails/spec_helper'
require './lib/TicTacToe/tictactoe'
require './lib/TicTacToe/ttt.rb'


describe TTT do

  before do
    @x_winner = %w[ X X X
                    - - -
                    - - - ]
    @o_winner = %w[ O O O
                    - - -
                    - - - ]
  end

  it "should accept an array showing the state of the board" do
    TTT.new(board: %w[ - - -
                       - - -
                       - - - ])
  end

  describe "Determining whether the game is over" do
    it "should recognize if a player has a already won" do
      game = TTT.new(state: @x_winner , dimension: 3)
      game.should be_over
    end

    it "should recognize a tie" do
      game = TTT.new
    end
  end

  describe "Finding a winner" do
    it "should recognize if play X has won" do
      TTT.new( state: @x_winner).winner.should == 'X'   
    end

    it "should recognize if player O has won" do
      TTT.new( state: @o_winner).winner.should == 'O'
    end
  end

  describe "Making moves" do
    describe "next move" do
    it "should respond with index of the next the next move" do
      TTT.new().next_move
    end

    it "should not move if the game is over" do
      TTT.new(state:@x_winner).next_move.should be_nil
    end

    it "should update its state if make_move! is called" do
      game = TTT.new()
      game.make_move!
    end
  end

  end

  describe "utility methods" do
    it "should square its dimension" do
      TTT.new(dimension: 4).dimension_squared.should == 16
    end
  end
end
