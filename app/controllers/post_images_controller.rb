class PostImagesController < ApplicationController

	def edit
  	@post = Post.find(params[:post_id])
    if @post.user != current_user
      redirect_to posts_path, alert: '不正なアクセスです。'
    end
  end




	def update
		@post = Post.find(params[:post_id])
		@post_image = PostImage.find(params[:id])
		@post_image.update(postimage_params)
		redirect_to edit_post_path(@post), notice: '画像の変更に成功しました。'

		#renderにしたい
	end

	def destroy
	end

	private
	def postimage_params
		params.require(:post_image).permit(:post_image)
	end
end
