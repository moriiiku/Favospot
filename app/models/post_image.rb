class PostImage < ApplicationRecord
	attachment :post_image
	belongs_to :post
end
