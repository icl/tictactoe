require 'spec_helper'

describe UserSessionsController do

  describe "POST 'create'" do
    it "should be successful" do
      post :create, :login => {:username => 'blah', :password => 'rah'}
      response.should redirect_to(root_path)
    end
  end

  describe "DELETE 'destroy'" do
    it "should be successful" do
      delete :destroy
      response.should be_success
    end
  end

end
