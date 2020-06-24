class AddUserIdToPostTags < ActiveRecord::Migration[5.0]
  def change
    add_column :post_tags, :user_id, :integer
  end
end
