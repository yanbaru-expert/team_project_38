class Movie < ApplicationRecord
  has_many :watched_movies, dependent: :destroy

  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true

  def watched_by?(user)
    watched_movies.find_by(user_id: user.id).present?
  end
end
