require 'faker'

FactoryBot.define do
  factory :doctor do
    name { Faker::Lorem.sentence }
    image { Faker::Lorem.sentence }
    price { Faker::Number.within(range: 100..3000) }
    details { Faker::Lorem.sentence }
  end
end
