class PostsController < ApplicationController
  def index
    if params[:sort_value] == "release_asc"
      @posts = Post.order(created_at: "asc")
    else
      @posts = Post.order(created_at: "desc")
    end
    render partial: "posts/index", collection: @posts, as: 'post'
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      title: params[:title],
      file_path: "/pdf/"+ params[:file].original_filename
    )
    @post.save
    file = params[:file]
    File.binwrite("/pdf", file.read)
    redirect_to admin_path
  end

  def destroy
  end
    
end
