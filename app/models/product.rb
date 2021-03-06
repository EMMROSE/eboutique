class Product < ApplicationRecord
  CATEGORIES = ['art_de_la_table', 'décoration', 'luminaires', 'linge_de_maison', 'mobilier']
  DELIVERABLE = ['false', 'true']
  validates :name, presence: true, length: { in: 3...30 }
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true
  validates :sku, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :deliverable, presence: true, inclusion: { in: DELIVERABLE }
  validates :brand, presence: true
  monetize :price_cents

  has_many :line_items, dependent: :destroy
  has_one_attached :photo
  has_one_attached :cover

  #pg search
  include PgSearch::Model
  pg_search_scope :search_by_name_sku,
    against: [ :name, :sku ],
    using: {
      tsearch: { prefix: true }
    }
end
