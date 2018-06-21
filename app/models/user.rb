class User < ActiveRecord::Base
  
  has_many :posts 
  has_many :tags
  
  validates :name, presence: true, uniqueness: true 
  
end
