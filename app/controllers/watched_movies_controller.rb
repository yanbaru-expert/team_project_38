class WatchedMoviesController < ApplicationController
  def create
    current_user.watched_movies.create!(movie_id: params[:movie_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.watched_movies.find_by(movie_id: params[:movie_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
