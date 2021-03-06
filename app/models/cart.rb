class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
  belongs_to :user, optional: true

  def sub_total
    sum = 0
    self.line_items.each do |line_item|
      sum+= line_item.total_price
    end
    return sum
  end

  def shipping
    sum = 0
    self.line_items.each do |line_item|
      sum+= line_item.total_price
    end
    sum+= 5.to_money
    return sum
  end

  def deliver
    deliverable_item = 0
    self.line_items.each do |item|
      if item.product.deliverable == "false"
        deliverable_item += 1
      else
        deliverable_item += 0
      end
    end
    return deliverable_item
  end

end
