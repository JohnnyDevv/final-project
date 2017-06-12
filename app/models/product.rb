class Product < ApplicationRecord
	belongs_to :category
	has_many :line_items
	has_many :orders, through: :line_items
	
	validates :title, presence: true
	#validates :description, presence: true

	mount_uploader :picture, PictureUploader

	before_destroy :ensure_not_referenced_by_any_line_item

	private

	def ensure_not_referenced_by_any_line_item
		unless line_items.empty?
			errors.add(:base, 'Line items present')
			throw :abort
		end
	end
end
