class Product < ApplicationRecord
  validates :name, :image_url, :price, :description, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..400}
  belongs_to :supplier
  has_many :image
  def is_discounted?
    if price < 10
      return "true"
    elsif price > 10
      return "false"
    end
  end
  def tax
    tax = price * 0.09
    return tax
  end
  def total
    total = tax + price
    return total
  end
end
