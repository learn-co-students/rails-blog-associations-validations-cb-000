class RenameUserIdToPostIdInPostTags < ActiveRecord::Migration
  def change
    rename_column :post_tags, :user_id, :post_id
  end
end
