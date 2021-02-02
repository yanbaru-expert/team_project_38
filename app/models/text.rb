class Text < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :read_users, through: :reads, source: :user
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
  
  def read_by?(user)
    reads.find_by(user_id: user.id).present?
  end
  def next
    texts.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]).where("id > ?", self.id).order("id ASC").first
  end
end
