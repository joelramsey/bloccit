class Post < ActiveRecord::Base
  belongs_to :summary
  has_many :comments
  belongs_to :user
  belongs_to :topic
  
  default_scope { order('created_at DESC') }
end
