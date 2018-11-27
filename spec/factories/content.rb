FactoryBot.define do
  factory :content do
    title { FFaker::Lorem.phrase }
    paragraph { FFaker::Lorem.paragraph }
  end
end
