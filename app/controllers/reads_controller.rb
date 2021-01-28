class ReadsController < ApplicationController
  def create
    @text = Text.find(params[:text_id])
    current_user.reads.create!(text_id: params[:text_id])
  end

  def destroy
    @text = Text.find(params[:text_id])
    current_user.reads.find_by(text_id: params[:text_id]).destroy!
  end
end