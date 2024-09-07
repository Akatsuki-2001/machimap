class MypageController < ApplicationController

def show
  @user = User.find(params[:id])
  if current_user.id == @user.id
    @posts = @user.posts
  else
    @posts = @user.posts.where(release:1)
  end
end

end
