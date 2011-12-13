require 'spec_helper'

describe Game do
  it "should require a dimension between 3 and 5" do
    Game.new(:dimension => 1).should_not be_valid
  end

  it "should require an experimental condition" do
    Game.new(:dimension => 3).should_not be_valid
  end

  describe "Summary Information" do

    describe "Calculated Properties" do
      before do
        @game = Factory.create :game1010
      end

      it "reports the number of moves total" do

        @game.total_moves.should == @game.moves.count
      end

      it "reports the number of valid moves" do
        @game.total_valid_moves == 8
      end

      it "reports the number of invalid moves" do
        @game.total_invalid_moves == 8
      end

      it "reports the mean inter move interval" do
        @game.mean_inter_move_interval.should == 6029
      end

      it "reports  the mean inter valid move interval" do
        @game.mean_inter_valid_move_interval.should be_within(1).of 12560
      end

      it "should know that it's a person's nth game" do
        @game.subject_game_number.should be 1
      end

      it "should know if its a person's second game" do
        new_game = @game.subject.games.create(:dimension => 3, :experimental_condition_id => 3)
        new_game.subject_game_number.should be 2
      end

      it "should know its a persons first game under a certain condition"

    end
  end
end
