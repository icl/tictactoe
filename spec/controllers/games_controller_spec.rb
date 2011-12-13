require 'spec_helper'

describe GamesController do
  before :each do
    session[:user] =true
  end
  describe "GET new" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end

end
