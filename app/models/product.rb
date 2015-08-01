class Product < ActiveRecord::Base
  has_many :order_items

  validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates_numericality_of :price

  def price=(input)
    input.delete!("$")
    super
  end
end
