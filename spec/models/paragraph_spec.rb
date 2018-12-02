require 'rails_helper'

RSpec.describe Paragraph do
  describe 'validations' do
    describe '#order' do
      it 'validates uniqueness of order inside content context' do
        content = create(:content)
        create(:paragraph, order: 1, content: content)
        paragraph = build(:paragraph, order: 1, content: content)

        expect(paragraph).to be_invalid
        expect(paragraph.errors[:order])
          .to include('order number must be unique inside content')
      end

      it 'validates presence of order' do
        paragraph = build(:paragraph, order: nil)

        expect(paragraph).to be_invalid
        expect(paragraph.errors[:order])
          .to include("can't be blank")
      end
    end
  end
end
