class Post < ActiveRecord::Base
  # models/post.rb
  has_many :posttags
  has_many :tags, through: :posttags
  belongs_to :user
end
