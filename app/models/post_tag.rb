class PostTag < ActiveRecord::Base
  # models/post_tag.rb
  belongs_to :post
  belongs_to :tag
end
