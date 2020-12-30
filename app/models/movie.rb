class Movie < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true
end
