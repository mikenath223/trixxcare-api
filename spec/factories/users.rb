# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :user do
    username { Faker::Name.first_name }
    password { Faker::Internet.password }
  end
end
