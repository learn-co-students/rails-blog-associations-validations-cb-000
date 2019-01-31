class AddContentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :content, :text
    add_column :posts, :user_id, :string
  end
end
