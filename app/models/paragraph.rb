class Paragraph < ApplicationRecord
  belongs_to :content

  has_one_attached :image

  validates :order, presence: true
  validates :order, uniqueness: {
    scope: :content_id, message: 'order number must be unique inside content'
  }

  scope :ordered, -> { order(:order) }
end
