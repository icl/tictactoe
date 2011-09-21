FactoryGirl.define do

  factory :subject do
    sequence(:initials) { |n| "SUB%04d" % n }
  end

  factory :experimental_condition do
    sequence(:name) { |n| "COND%04" % n}

    factory :normal do
      name "Normal"
    end
    factory :blank do
      name "Blank"
    end
    factory :skewed do
      name "Skewed"
    end
  end
end
