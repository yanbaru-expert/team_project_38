class TextsController < ApplicationController

  def index
    @texts = Text.genre.oldest
    @read_text_ids = current_user.reads.pluck(:text_id)
  end

  def show
    @text = Text.find(params[:id])
    @next_text = Text.genre.where("id > ?", @text.id).oldest.first
  end


end
