class Post < ApplicationRecord
	belongs_to :user
	has_many :post_images
	#?one??
	accepts_nested_attributes_for :post_images
	#?
end
