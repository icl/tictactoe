Given /^I visit the first subject's page$/ do
  visit subject_path Subject.first.id
end

