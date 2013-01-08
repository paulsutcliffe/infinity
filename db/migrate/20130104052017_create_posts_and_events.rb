class CreatePostsAndEvents < ActiveRecord::Migration
  def self.up
    create_table :posts_and_events do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :posts_and_events
  end
end
