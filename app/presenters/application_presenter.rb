class ApplicationPresenter
  def initialize(content: nil)
    @content = content
  end

  def background_image_url
    route_helper.url_for(background_content.image)
  end

  private

  attr_reader :content

  def route_helper
    Rails.application.routes.default_url_options[:host] = 'localhost:3000'
    Rails.application.routes.url_helpers
  end

  def background_content
    @background_content ||= @content || random_content
  end

  def random_content
    @random_content ||= Content.find(Content.pluck(:id).sample)
  end
end
