class TextsController < ApplicationController

  def index
    @texts = Text.genre.oldest
    @read_text_ids = current_user.reads.pluck(:text_id)
  end

  def show
    @text = Text.find(params[:id])
    @next_text = Text.next(@text.id)
  end


end
