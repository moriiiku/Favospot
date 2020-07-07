class PostImage < ApplicationRecord
	attachment :post_image

	belongs_to :post, optional: true

	with_options presence: true do
		validates :post_image, presence: { message: "は必ず投稿してください。"}
		#検証
	end
end
