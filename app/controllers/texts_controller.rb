class TextsController < ApplicationController

  def index
    @texts = Text.order(id: :asc)
  end

  def show
    @text = Text.find(params[:id])
  end
  

end
