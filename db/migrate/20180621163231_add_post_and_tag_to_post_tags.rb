class AddPostAndTagToPostTags < ActiveRecord::Migration
  def change
    add_column :post_tags, :post, :text
    add_column :post_tags, :tag, :text
  end
end
