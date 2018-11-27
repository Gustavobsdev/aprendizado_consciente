require 'rails_helper'

RSpec.describe 'user_sees_blog_content' do
  context 'when content is text-only' do
    it 'shows content' do
      content = FactoryBot.create(:content)

      visit content_path(content)

      expect(page).to have_content(content.title)
      expect(page).to have_content(content.paragraph)
    end

    it 'shows links' do
      content = FactoryBot.create(
        :content,
        paragraph: "[I'm an inline-style link](https://www.google.com)"
      )

      visit content_path(content)

      expect(page).to have_content(content.title)
      expect(page).to have_link(
        "I'm an inline-style link",
        href: 'https://www.google.com'
      )
    end
  end
end
