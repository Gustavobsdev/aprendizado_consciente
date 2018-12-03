class Content < ApplicationRecord
  belongs_to :category
  has_many :paragraphs

  has_one_attached :image
end
