require 'faker'
FactoryBot.define do
  factory :user do
    name Faker::Name.name
    password Faker::Internet.password(10)
    email Faker::Internet.email(Faker::Name.name)
    gender 'male'
    dob Faker::Date.birthday(18,65)
  end
end
