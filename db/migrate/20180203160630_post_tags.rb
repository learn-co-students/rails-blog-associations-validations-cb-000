class PostTags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
