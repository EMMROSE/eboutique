class Event < ApplicationRecord
  has_one_attached :cover
  validates :title, presence: true, length: { in: 3...50 }
  validates :description, presence: true

  has_many :subcriptions, dependent: :destroy
end
