class PostsController < ApplicationController
  def index
    @posts = Post.all
    render jsonapi: @posts
  end
end
