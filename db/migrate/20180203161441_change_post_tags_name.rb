class ChangePostTagsName < ActiveRecord::Migration
  def change
    rename_table :posttags, :post_tags
  end
end
