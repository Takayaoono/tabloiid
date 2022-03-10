class PostsController < ApplicationController
  def index
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

  def new
  end

  def destroy
  end
end
