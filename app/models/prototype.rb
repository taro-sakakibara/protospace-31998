class Prototype < ApplicationRecord
  validates :image, presence: true
  validates :title, presence: true
  validates :cath_copy, presence: true
  validates :concept, presence: true
  has_one_attached :image
end
