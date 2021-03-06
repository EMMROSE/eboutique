class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :line_items, dependent: :destroy

  validates :email, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  STATUSES = ["pending", "payed", "delivered"]
  validates :status, inclusion: {in: STATUSES}
  monetize :amount_cents

end
