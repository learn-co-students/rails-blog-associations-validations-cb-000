class Post < ActiveRecord::Base
  
  has_many :post_tags
  has_many :tags, through: :post_tags
  belongs_to :user
  
  validates :post_name, presence: true 
  validates :post_content, presence: true
  
end
