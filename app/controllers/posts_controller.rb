class PostsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.where(release:1)
  end

  def new
    @post=Post.new
  end
  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    if post.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end
  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:body,:lat,:lng,:content,:image,:release)
  end

end
# endの対応関係に注意！最後のendで最初のclassを閉じる！