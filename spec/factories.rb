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
    factory :blind do
      name "Blind"
    end
    factory :training do
      name "Training"
    end
  end

  factory :move do
  end


  factory :game do
    dimension 3
    association :experimental_condition
    association :subject

    factory :by4game do
      dimension 4
    end

    factory :by5game do
      dimension 5
    end
  end

  factory :game1010, :parent => :game do
    dimension 4
    association :experimental_condition, :factory => :blind

    after_create {|g|
      Factory(:move, :game => g, :computer_position => 6)
      Factory(:move, :game => g,  :subject_position => 16, :computer_position => 8, :prompt_timestamp =>    1321471483700, :move_timestamp => 1321471493658,:is_error => false)
      Factory(:move, :game => g,  :subject_position => 7, :computer_position => 13, :prompt_timestamp =>    1321471494160, :move_timestamp => 1321471501869,:is_error => false)
      Factory(:move, :game => g,  :subject_position => 4, :computer_position => 3, :prompt_timestamp =>     1321471502371, :move_timestamp => 1321471513972,:is_error => false)
      Factory(:move, :game => g,  :subject_position => 8, :computer_position => nil, :prompt_timestamp =>   1321471514473, :move_timestamp => 1321471518566,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 9, :computer_position => 12, :prompt_timestamp =>    1321471519068, :move_timestamp => 1321471529707,:is_error => false)
      Factory(:move, :game => g,  :subject_position => 11, :computer_position => 1, :prompt_timestamp =>    1321471530209, :move_timestamp => 1321471541737,:is_error => false)
      Factory(:move, :game => g,  :subject_position => 6, :computer_position => nil, :prompt_timestamp =>   1321471542239, :move_timestamp => 1321471549982,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 5, :computer_position => 15, :prompt_timestamp =>    1321471550483, :move_timestamp => 1321471554400,:is_error => false)
      Factory(:move, :game => g,  :subject_position => 14, :computer_position => 2, :prompt_timestamp =>    1321471554902, :move_timestamp => 1321471561131,:is_error => false)
      Factory(:move, :game => g,  :subject_position => 13, :computer_position => nil, :prompt_timestamp =>  1321471561633, :move_timestamp => 1321471567935,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 11, :computer_position => nil, :prompt_timestamp =>  1321471568437, :move_timestamp => 1321471572825,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 3, :computer_position => nil, :prompt_timestamp =>   1321471573326, :move_timestamp => 1321471576891,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 7, :computer_position => nil, :prompt_timestamp =>   1321471577393, :move_timestamp => 1321471582510,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 8, :computer_position => nil, :prompt_timestamp =>   1321471583012, :move_timestamp => 1321471585439,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 9, :computer_position => nil, :prompt_timestamp =>   1321471585941, :move_timestamp => 1321471586944,:is_error => true)
      Factory(:move, :game => g,  :subject_position => 10, :computer_position => nil, :prompt_timestamp =>  1321471587446, :move_timestamp => 1321471587697,:is_error => false)
      g.comp_moves_first = true
    }
  end
end
