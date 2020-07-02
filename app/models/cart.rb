class Cart < ApplicationRecord
	belongs_to :user
	has_many :cart_items

#add to cart

def total_price
   self.items.pluck(:price).inject(:+)
end
end