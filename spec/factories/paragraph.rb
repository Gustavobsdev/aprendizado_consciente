include ActionDispatch::TestProcess

FactoryBot.define do
  factory :paragraph do
    order { 1 }
    text { FFaker::Lorem.paragraph }
    type { 'TextParagraph' }
    association :content, strategy: :build
  end

  factory :image_paragraph do
    order { 1 }
    type { 'ImageParagraph' }
    image { fixture_file_upload(Rails.root.join('spec', 'support', 'assets', 'universe.png'), 'image/png') }
    association :content, strategy: :build
  end
end
