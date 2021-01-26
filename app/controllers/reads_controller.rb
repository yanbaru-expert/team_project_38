class ReadsController < ApplicationController
  def create
    # binding.pry
    current_user.reads.create!(text_id: params[:text_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.reads.find_by(text_id: params[:text_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end