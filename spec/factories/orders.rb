FactoryBot.define do
  factory :order do
    association :table
    association :client
  end
end
