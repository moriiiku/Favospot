class Post < ApplicationRecord
	belongs_to :user
	has_many :favorites, dependent: :destroy
	has_many :post_images, dependent: :destroy


	accepts_nested_attributes_for :post_images
	#?

	with_options presence: true do
		validates :title, presence: { message: "を入力してください。"}
		validates :body, presence: { message: "はなぜお気に入りなのか入力してください。"}

		#validates :place

		#検証
	end

end
