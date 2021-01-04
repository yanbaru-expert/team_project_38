class TextsController < ApplicationController

  def index
    @texts = Text.order(id: :asc)
  end

  def show
    @texts = Text.find()
  end

end
