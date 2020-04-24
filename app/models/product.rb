class Product < ApplicationRecord
  validates :name, presence: true, length: { in: 3...50 }
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
  validates :sku, presence: true, uniqueness: true

  monetize :price_cents

  has_many :line_items, dependent: :destroy
  has_many_attached :photos
end
