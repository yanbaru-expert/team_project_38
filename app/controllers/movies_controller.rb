class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).order(id: :asc)
  end
end
