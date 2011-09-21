require 'spec_helper'

describe Game do
  it "should require a dimension between 3 and 5" do
    Game.new(:dimension => 1).should_not be_valid
  end

  it "should require an experimental condition" do
    Game.new(:dimension => 3).should_not be_valid
  end
end
