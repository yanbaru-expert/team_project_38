class Text < ApplicationRecord
  has_many :likes, dependent: :destroy
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true

  def read_by?(user)
    reads.find_by(user_id: user.id).present?
  end
end
