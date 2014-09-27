FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "email.address#{n}@gmail.com"
    end

    sequence :username do |n|
      "username#{n}"
    end

    password "1234qwer1234"

    trait :admin do
      role "admin"
    end

    trait :member do
      role "member"
    end
  end
end
