FactoryGirl.define do

  factory :subject do
    sequence(:initials) { |n| "SUB%04d" % n }
  end
end
