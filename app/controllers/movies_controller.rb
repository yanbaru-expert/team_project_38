class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
    @movies = Movie.page(params[:page]).per(6)

    @watched_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
