class Text < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :readd_users, through: :reads, source: :user
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
  
  def read_by?(user)
    reads.find_by(user_id: user.id).present?
  end
end
