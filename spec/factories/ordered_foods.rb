FactoryBot.define do
  factory :ordered_food do
    association :order
    association :food
  end
end
