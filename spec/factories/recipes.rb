FactoryGirl.define do
  factory :recipe do
    sequence(:name) { |n| "Green Eggs & Ham #{n}" }
    description "Just what the title says."
    instructions "1. Cook eggs.\n2. Cook ham.\n3. Combine"
    servings 4
    cooking_time 45
  end
end
