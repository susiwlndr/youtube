class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :channel
  has_many :musics

  has_many :likes, dependent: :destroy
  has_many :subscription_musics, dependent: :destroy

  has_many :comment_musics
  has_many :playlists, dependent: :destroy
end
