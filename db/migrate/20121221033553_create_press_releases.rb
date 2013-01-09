class CreatePressReleases < ActiveRecord::Migration
  def self.up
    create_table :press_releases do |t|
      t.string :title
      t.string :content
      t.string :slug

      t.timestamps
    end
    add_index :press_releases, :slug, :unique => true
  end

  def self.down
    drop_table :press_releases
  end
end
