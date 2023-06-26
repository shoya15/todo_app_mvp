class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc).reverse
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def done
    @post = Post.find(params[:id])
    @post.update(state: true)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(
      :content,
      :state
    )
  end
end
