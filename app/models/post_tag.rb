class PostTag < ActiveRecord::Base
  #relationships
  belongs_to :post
  belongs_to :tag 
end
