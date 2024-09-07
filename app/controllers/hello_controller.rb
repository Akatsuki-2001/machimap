class HelloController < ApplicationController
  def index
    @posts = Post.where(release:1)
  end
  def link
  end
end
