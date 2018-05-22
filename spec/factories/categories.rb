FactoryGirl.define do
  factory :category do
    sequence(:name) { |n| "name#{n}" }
    sequence(:branch) { |n| "branch#{n}" }
    trait :study_branch do
      branch 'study'
    end
  end
end
