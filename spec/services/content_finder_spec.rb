require 'rails_helper'

RSpec.describe ContentFinder do
  describe '.find' do
    it 'finds a content by id' do
      content = create(:content)

      found_content = described_class.find(content.id)

      expect(found_content).to eq(content)
    end

    it 'finds a content by slug' do
      content = create(:content)

      found_content = described_class.find(content.slug)

      expect(found_content).to eq(content)
    end

    it 'returns RecordNotFound error if content is not found' do
      expect{described_class.find(12)}
        .to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
