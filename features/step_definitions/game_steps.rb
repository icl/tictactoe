Then /^I should be redirected to a new game$/ do
  current_path = URI.parse(current_url).path
  match current_path => 'games#show'
end

Given /^I visit the first game$/ do
  id = Game.all.first.id
  visit game_path(id)
end

Then /^the game should have a move$/ do
  path_info = Rails.application.routes.recognize_path current_path
  Game.find(path_info[:id]).moves.length.should == 1
end

Given /^there are no games$/ do
  Game.destroy_all
end
