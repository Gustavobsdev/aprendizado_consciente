class ParagraphPresenter
  PARAGRAPH_STRINGS = {
    TextParagraph.to_s => 'text_paragraph',
    ImageParagraph.to_s => 'image_paragraph'
  }
  def initialize(paragraph)
    @paragraph = paragraph
  end

  def render_paragraph
    helper.render(
      partial: "paragraphs/#{paragraph_type}",
      locals: { paragraph: paragraph, markdown: markdown }
    )
  end

  private

  attr_reader :paragraph

  def helper
    ApplicationController
  end

  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)
  end

  def paragraph_type
    PARAGRAPH_STRINGS[paragraph.type]
  end
end
