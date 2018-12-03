require 'rails_helper'

RSpec.describe 'user_sees_blog_content' do
  context 'when content is text-only' do
    it 'shows content' do
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
      last_paragraph = create(
        :paragraph,
        order: 3,
        content: content
      )

      visit content_path(content)

      expect(page).to have_content(content.title)

      within('.paragraph-1') do
        expect(page).to have_content(first_paragraph.text)
      end

      within('.paragraph-2') do
        expect(page).to have_content(second_paragraph.text)
      end

      within('.paragraph-3') do
        expect(page).to have_content(last_paragraph.text)
      end
    end

    it 'shows links' do
      content = create(
        :content,

      )
      create(
        :paragraph,
        text: "[I'm an inline-style link](https://www.google.com)",
        content: content
      )

      visit content_path(content)

      expect(page).to have_content(content.title)
      expect(page).to have_link(
        "I'm an inline-style link",
        href: 'https://www.google.com'
      )
    end

    it 'finds content by slug' do
      content = create(:content)

      first_paragraph = create(
        :paragraph,
        order: 1,
        content: content
      )

      visit content_path(content.slug)

      expect(page).to have_content(content.title)

      within('.paragraph-1') do
        expect(page).to have_content(first_paragraph.text)
      end
    end
  end

  context 'when content has images' do
    it 'shows content in order' do
      content = create(:content)
      first_paragraph = create(
        :paragraph,
        order: 1,
        content: content
      )

      _second_paragraph = create(
        :image_paragraph,
        order: 2,
        content: content
      )

      visit content_path(content)

      expect(page).to have_content(content.title)

      within('.paragraph-1') do
        expect(page).to have_content(first_paragraph.text)
      end

      within('.paragraph-2') do
        expect(page).to have_xpath("//img[contains(@src,'universe.png') and @class='paragraph-2']")
      end
    end
  end

  it 'views breadcrumb' do
    category = create(:category)
    content = create(:content, category: category)
    _first_paragraph = create(
      :paragraph,
      order: 1,
      content: content
    )
    visit content_path(content)

    expect(page).to have_content(content.title)
    expect(page).to have_link('Página inicial', href: '/')
    expect(page).to have_link(content.category.title, href: '#')
  end
end
