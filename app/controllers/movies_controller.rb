class MoviesController < ApplicationController
  def index
    genre_list = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
@movies = Movie.where(genre: genre_list).order(id: :asc).page(params[:page]).per(6)

    @watched_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
