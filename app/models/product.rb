class Product < ApplicationRecord
	belongs_to :category
	validates :title, presence: true
	#validates :description, presence: true

	mount_uploader :picture, PictureUploader
end
