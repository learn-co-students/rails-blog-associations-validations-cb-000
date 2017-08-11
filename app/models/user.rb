class User < ActiveRecord::Base
  #validations
  validates :name, :presence => true 
  validates :name, :uniqueness => true
  has_many :posts
end
