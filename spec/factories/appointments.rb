FactoryBot.define do
  factory :appointment do
    user { nil }
    doctor { nil }
    date { "2020-05-08 16:36:26" }
    location { "MyString" }
  end
end
