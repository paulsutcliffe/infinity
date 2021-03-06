class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :important, :default => false
      t.boolean :landing_page, :default => false
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
