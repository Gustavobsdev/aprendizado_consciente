FactoryBot.define do
  factory :content do
    title { FFaker::Lorem.phrase }
    image { fixture_file_upload(Rails.root.join('spec', 'support', 'assets', 'universe.png'), 'image/png') }
    slug  { FFaker::Lorem.word.downcase }
    association :category, strategy: :build
  end
end
