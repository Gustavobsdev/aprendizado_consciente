class ContentPresenter
  def initialize(content)
    @content = content
  end

  def render_paragraphs
    rendered_paragraphs = ""
    content.paragraphs.each do |paragraph|
      rendered_paragraphs += ParagraphPresenter.new(paragraph).render_paragraph
    end
    rendered_paragraphs
  end

  private

  attr_reader :content

end
