# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :appointment do
    date { Time.now + rand(1..20) }
    location { Faker::Address.full_address }
    association :user
    association :doctor

    trait :invalid do
      date { '' }
    end
  end
end
