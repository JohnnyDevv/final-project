class Order < ApplicationRecord
	enum pay_type: {
		"Check" => 0,
		"Credit card" => 1,
		"Purchase order" => 2
	}

	attr_accessor :card_no, :card_cvv, :expiry_year, :expiry_month

	has_many :line_items, dependent: :destroy
	
	validates :fname, :lname, :email, :address, :card_no, :card_cvv,:expiry_year, :expiry_month, presence: true
	validates :pay_type, inclusion: pay_types.keys
	
	
	def add_line_items_from_cart(cart)
 		cart.line_items.each do |item|
 			item.cart_id = nil
 			line_items << item
 		end
	end
end
