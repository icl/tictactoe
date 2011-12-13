require 'spec_helper'

describe GameExporter do

  describe "the required information for a game" do
    before do
      @game = Factory.create :game1010
      @exporter = GameExporter.new @game
      @dump = @exporter.summary_attributes
    end

    it "reports the subject initials" do
      @dump[:subject_initials].should_not be_nil
    end
    it "reports the dimension" do
      @dump[:dimension].should_not be_nil
    end
    it "reports the condition"do
      @dump[:condition].should_not be_nil
    end
    it "reports the game # for that subject in that condition" do
      @dump[:subject_game_number_for_condition].should_not be_nil
    end
    it "reports the game # for that dimension"do
      @dump[:subject_game_number_for_dimension].should_not be_nil
    end
    it "reports the game # for that subject" do
      @dump[:subject_game_number].should_not be_nil
    end
    it "reports the number of moves" do
      @dump[:total_moves].should_not be_nil
    end
    it "reports the number of valid moves" do
      @dump[:total_valid_moves].should_not be_nil
    end
    it "reports the mean inter-move-interval" do
      @dump[:mean_inter_move_interval].should_not be_nil
    end
    it "reports the number of invalid moves" do
      @dump[:total_invalid_moves].should_not be_nil
    end
    it "reports the mean inter valid move interval" do
      @dump[:mean_inter_valid_move_interval].should_not be_nil
    end
    it "reports the mean inter invalid move interval" do
      @dump[:mean_inter_error_interval].should_not be_nil
    end

  end
end
