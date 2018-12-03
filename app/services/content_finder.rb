class ContentFinder
  def self.find(id_or_slug)
    new(id_or_slug).find
  end

  def initialize(id_or_slug)
    @id_or_slug = id_or_slug
  end

  def find
    by_slug || by_id
  end

  private

  attr_accessor :id_or_slug

  def by_slug
    Content.find_by(slug: id_or_slug)
  end

  def by_id
    Content.find(id_or_slug)
  end
end
