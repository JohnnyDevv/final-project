class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	#has_many :images
	validates :title, :presence => true
	validates :body, :presence => true
	belongs_to :user

	mount_uploader :picture, PictureUploader
end
