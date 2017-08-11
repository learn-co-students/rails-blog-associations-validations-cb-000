class Post < ActiveRecord::Base
  validates_presence_of [:name, :content]

  #relationships
  belongs_to :user 
  has_many :post_tags
  has_many :tags, :through => :post_tags

end
