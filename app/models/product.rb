class Product < ApplicationRecord
  CATEGORIES = ['art de table', 'décoration', 'luminaires', 'linge de maison', 'mobilier']
  validates :name, presence: true, length: { in: 3...50 }
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
  validates :sku, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  monetize :price_cents

  has_many :line_items, dependent: :destroy
  has_one_attached :photo
  has_one_attached :cover
end
