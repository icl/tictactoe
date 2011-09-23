Then /^I should be redirected to a new game$/ do
  current_path = URI.parse(current_url).path
  match current_path => 'games#show'
end

Given /^I visit the first game$/ do
  id = Game.all.first.id
  visit game_path(id)
end


