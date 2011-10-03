Given /^a standard set of experimental conditions exist$/ do
  Factory.create(:normal)
  Factory.create(:skewed)
  Factory.create(:blank)
  Factory.create(:blind)
  Factory.create(:training)
end

