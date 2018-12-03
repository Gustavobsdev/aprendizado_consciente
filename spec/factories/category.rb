FactoryBot.define do
  factory :category do
    title { FFaker::Lorem.phrase }
    slug  { FFaker::Lorem.word.downcase }
  end
end
