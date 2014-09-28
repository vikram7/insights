FactoryGirl.define do
  factory :insight do
    sequence :body do |n|
      "this is an insight #{n}"
    end

    association :user
  end
end
