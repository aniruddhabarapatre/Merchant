class Product < ActiveRecord::Base
  validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates_numericality_of :price
end
