FactoryBot.define do 
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com" 
    end
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end


  factory :shot do 
    message { "hello"}
    association :user
  end 
end