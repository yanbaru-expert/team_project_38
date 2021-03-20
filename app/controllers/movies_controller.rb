class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
    @movies = Movie.all.page(params[:page]).per(12)

    @watched_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
