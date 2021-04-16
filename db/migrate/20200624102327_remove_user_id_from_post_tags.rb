class RemoveUserIdFromPostTags < ActiveRecord::Migration[5.0]
  def change
    remove_column :post_tags, :user_id, :integer
  end
end
