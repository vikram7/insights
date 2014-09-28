FactoryGirl.define do
  factory :insight do
    body "The bash operator is great for ActiveRecord"

    association :user
  end
end
