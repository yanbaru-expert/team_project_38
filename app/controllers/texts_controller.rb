class TextsController < ApplicationController

  def index
    @texts = Text.order(id: :asc)
  end

  

end
