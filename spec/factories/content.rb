FactoryBot.define do
  factory :content do
    title { FFaker::Lorem.phrase }
  end
end
