# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :house do
    name { Faker::Lorem.sentence }
    image { Faker::Lorem.sentence }
    price { Faker::Number.within(range: 100..3000) }
    details { Faker::Lorem.sentence }
    rating { Faker::Lorem.sentence }
  end
end
