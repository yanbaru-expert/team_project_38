class User < ApplicationRecord
  has_many :reads, dependent: :destroy
  # Include default devise modules. Others available are:
  has_many :read_texts, through: :reads, source: :text
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
