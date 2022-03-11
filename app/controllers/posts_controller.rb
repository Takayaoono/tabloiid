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
    file = params[:file]

    post = Post.new(
      title: params[:title],
      file_path: file.original_filename
    )
    post.save

    File.binwrite("public/pdf/#{file.original_filename}", file.read)
    redirect_to admin_path
  end

  def destroy
    post = Post.find(params[:id])
    post.discard
    redirect_to admin_path
  end
    
end
