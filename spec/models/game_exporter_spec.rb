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
    it "reports the dimension"
    it "reports the condition"
    it "reports the game # for that subject in that condition"
    it "reports the game # for that dimension"
    it "reports the game # for that subject"
    it "reports the number of moves"
    it "reports the number of valid moves"
    it "reports the mean inter-move-interval"
    it "reports the number of invalid moves"
    it "reports the mean inter valid move interval"
    it "reports the mean inter invalid move interval"

  end
end
