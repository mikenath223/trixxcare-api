# frozen_string_literal: true

require "faker"

FactoryBot.define do
  factory :user do
    username { Faker::Name.first_name + rand(1..2000).to_s }
    password { Faker::Internet.password }
  end
end
