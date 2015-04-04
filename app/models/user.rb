class User < ActiveRecord::Base
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :posts
  mount_uploader :avatar, AvatarUploader
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  def admin?
    role == 'admin'
  end
  
  def moderator?
    role == 'moderator'
  end
  
  def favorited(post)
     favorites.where(post_id: post.id).first
  end
  
  def voted(post)
     votes.where(post_id: post.id).first
  end
end
