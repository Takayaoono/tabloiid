class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all.order(created_at: "desc")
    @tags = Tag.all
    @tag = Tag.new
  end
end
