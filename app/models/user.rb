class User < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  has_many :posts
  has_many :tags, through: :posts

end
