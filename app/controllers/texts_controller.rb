class TextsController < ApplicationController

  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
  end

  def create
    text = Text.create!(post_params)
    redirect_to post, notice: "投稿しました"
  end

  def update
    @text.update!(post_params)
    redirect_to @post, notice: "更新しました"
  end

  def destroy
    @text.destroy!
    redirect_to root_path, alert: "削除しました"
  end

end
