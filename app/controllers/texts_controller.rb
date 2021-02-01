class TextsController < ApplicationController

  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
    @q = Text.ransack(params[:q])
  end

  def show
    @text = Text.find(params[:id])
  end


end
