class PostsController < ApplicationController
  def index
  	@posts = Post.all

  end

    def all
      @posts = Post.all
    end

  def show
  	@post = Post.find(params[:id])
    #post_image = Post_image.find(params[:id])
  end

  def new
  	@post = Post.new
    @post.post_images.build
  end

  def create
  	@post = Post.new(post_params)
  	@post.user_id = current_user.id
  	@post.save
  	redirect_to post_path(@post)
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	@post.update(post_params)
  	redirect_to post_path(@post)
  end

  def destroy
  	post = Post.find(params[:id])
  	post.destroy
  	redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, post_images_attributes: [:post_image]) #?
  end
end
