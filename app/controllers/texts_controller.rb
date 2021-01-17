class TextsController < ApplicationController

  def index
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
  end

  def show
    @texts = Text.find(params[:id])
  end


end
