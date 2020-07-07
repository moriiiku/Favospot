class PostImagesController < ApplicationController


	def update
		@post = Post.find(params[:post_id])
		@post_image = PostImage.find(params[:id])
		@post_image.update(postimage_params)
		redirect_to post_path(@post)
	end

	def destroy
	end

	private
	def postimage_params
		params.require(:post_image).permit(:post_image)
	end
end
