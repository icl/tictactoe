Then /^I should be redirected to a new game$/ do
  current_path = URI.parse(current_url).path
  match current_path => 'games#show'
end

