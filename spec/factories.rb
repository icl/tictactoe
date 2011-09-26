FactoryGirl.define do

  factory :subject do
    sequence(:initials) { |n| "SUB%04d" % n }
    sequence(:email) { |n|  "sub%04d@host.com" % n }
  end

  factory :experimental_condition do
    sequence(:name) { |n| "COND%04d" % n}

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

  factory :game do
    dimension 3
    association :experimental_condition

    factory :by4game do
      dimension 4
    end

    factory :by5game do
      dimension 5
    end
  end
end
