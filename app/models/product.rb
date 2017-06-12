class Product < ApplicationRecord
	belongs_to :category
	has_many :line_items
	has_many :orders, through: :line_items
	
	validates :title, :price, :picture, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :picture, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}
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
