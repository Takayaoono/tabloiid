class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end
  
  def new
    @tag = Tag.new
    @tags = Tag.all #モーダルウィンドウにタグ一覧を表示するため
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save
    redirect_to admin_path
  end

  def show
  end

  def edit
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to admin_path
  end

  def search
    @tag = Tag.find(params[:id])
    @posts = @tag.posts
  end

  def reset
    @posts = Post.all
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
