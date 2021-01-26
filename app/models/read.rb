class Read < ApplicationRecord
  belongs_to :user
  belongs_to :text
  validates :user_id, uniqueness: {
    scope: :text_id,
    message: "は同じ投稿に2回以上いいねはできません"
  }
end
