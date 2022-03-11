class GuestsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: "desc")
    @tags = Tag.all
  end
end
