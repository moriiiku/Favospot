class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy


  validates :user_name, presence: true

  def already_favorited?(post)
    self.favorites.exists?(post_id: post.id)
  end


end
