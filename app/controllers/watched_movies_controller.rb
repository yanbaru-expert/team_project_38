class WatchedMoviesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    current_user.watched_movies.create!(movie_id: params[:movie_id])
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    current_user.watched_movies.find_by(movie_id: params[:movie_id]).destroy!
  end
end
