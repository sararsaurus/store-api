class Product < ApplicationRecord
  # has_many :orders, through: :carted_products
  has_many :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  # def is_discounted?
  #   if price < 10
  #     return true
  #   else
  #     return false
  #   end
  # end

  # def subtotal
  #   price * quantity
  # end

  # def tax
  #   tax = price * 0.09
  # end

  # def total
  #   sum = tax + price
  #   sum
  # end
end
