class TextsController < ApplicationController

  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
    @read_text_ids = current_user.reads.pluck(:text_id)
  end

  def show
    @text = Text.find(params[:id])
  end


end
