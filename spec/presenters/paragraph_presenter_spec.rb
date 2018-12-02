require 'rails_helper'

RSpec.describe ParagraphPresenter do
  describe `#render_paragraph` do
    it 'renders text paragraph' do
      paragraph = create(:paragraph)

      rendered_paragraph = described_class.new(paragraph).render_paragraph

      expect(rendered_paragraph).to include(paragraph.text)
    end

    it 'renders image paragraph' do
      paragraph = create(:image_paragraph, order: 1)

      rendered_paragraph = described_class.new(paragraph).render_paragraph

      expect(rendered_paragraph).to include('img')
      expect(rendered_paragraph).to include('universe.png')
    end
  end
end
