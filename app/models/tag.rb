class Tag < ActiveRecord::Base
  #validations
  validates :name, :uniqueness => true

  #relationships
  has_many :post_tags
  has_many :posts, :through => :post_tags
end
