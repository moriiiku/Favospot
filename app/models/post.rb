class Post < ApplicationRecord
	belongs_to :user
	attachment :post_image
	#?
	has_many :post_images
	#?
	accepts_nested_attributes_for :post_images
	#?
end
