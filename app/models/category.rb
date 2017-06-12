class Category < ApplicationRecord
	has_many :products
	#has_many :line_items
	validates :name, presence: true #uniquness: true
end
