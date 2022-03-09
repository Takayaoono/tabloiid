class GuestsController < ApplicationController
  def index
    # 連想配列にする(タイトル、タグ、ファイル)
    @posts = { title:'タイトル' , tag:'タグ' , file:'ファイル'}
  end
end
