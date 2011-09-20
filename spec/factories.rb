FactoryGirl.define do

  factory :subject do
    sequence(:intials) { |n| "SUB%04d" % n }
  end
end
