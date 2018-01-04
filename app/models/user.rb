class User < ActiveRecord::Base
  has_many :posts
  has_many :tags, through: :post_tags
  validates :name, presence: true, uniqueness: true
end
