FactoryGirl.define do
  factory :user do
    name        "Test User1"
    email       "test@example.com"
    password    "tester1!"
    password_confirmation "tester1!"
  end
end