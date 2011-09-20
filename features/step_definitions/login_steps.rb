When /^I log in$/ do
  visit '/'
  fill_in 'username', :with => 'test'
  fill_in 'password', :with => 'test'
  click_button 'Sign in'
end

