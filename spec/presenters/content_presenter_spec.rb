require 'rails_helper'

RSpec.describe ContentPresenter do
  describe '#render_paragraphs' do
    it 'renders paragraph collection' do
      content = create(:content)
      first_paragraph = create(
        :paragraph,
        order: 1,
        content: content
      )
      second_paragraph = create(
        :paragraph,
        order: 2,
        content: content
      )

      rendered_paragraphs = described_class.new(content).render_paragraphs

      expect(rendered_paragraphs).to include(first_paragraph.text)
      expect(rendered_paragraphs).to include(second_paragraph.text)
    end
  end
end
