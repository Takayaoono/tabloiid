class PostsController < ApplicationController
  def index
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

  def new
  end

  def destroy
  end
end
