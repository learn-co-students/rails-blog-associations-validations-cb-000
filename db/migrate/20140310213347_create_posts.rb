class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
# rails g scaffold User name:string --no-test-framework --no-helper --no-assets
# rails g scaffold Tag name:string --no-test-framework --no-helper --no-assets
