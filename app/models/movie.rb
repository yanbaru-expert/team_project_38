class Movie < ApplicationRecord
  has_many :watched_movies, dependent: :destroy

  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true
end
