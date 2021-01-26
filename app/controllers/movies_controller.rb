class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
    @watched_movie_ids = current_user.watched_movies.pluck(:movie_id)
  end
end
