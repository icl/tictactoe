require 'spec_helper'

describe Move do


  describe "calculated attributes" do

    describe "inter valid move interval" do
      before do
        @game = Factory.create :game1010
      end
      it "is the time since the last move if the last move was successful" do
        @game.moves.second.inter_success_interval.should == 9958
      end

      it "is the time since the last valid move if there are intervening errors" do
        @game.moves.last.inter_success_interval.should == 26064
      end
    end

  end
end

