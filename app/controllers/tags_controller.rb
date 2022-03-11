class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end
  
  def new
    @tag = Tag.new
    @tags = Tag.all #モーダルウィンドウにタグ一覧を表示するため
  end

  def create #新規タグ登録
    @tag = Tag.new(tag_params)
    @tag.save
    redirect_to admin_path
  end

  def create_2 #1つのpostに対してタグ追加
    @tag = PostTag.create(post_id: params[:post_id], tag_id: params[:tag_id])
    redirect_to admin_path
  end

  def show
  end

  def edit
    @post = Post.find(params[:post_id])
    @hold_tags = @post.tags #postが既に持っているタグ
    @tags = Tag.all #postにタグを追加
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to admin_path
  end

  def destroy_2 #1つのpostに付いているタグのみ削除（中間テーブルのレコードのみ削除）
    @post_tag = PostTag.find_by(post_id: params[:post_id], tag_id: params[:tag_id])
    @post_tag.destroy
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
