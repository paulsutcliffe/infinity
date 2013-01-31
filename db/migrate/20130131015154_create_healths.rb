class CreateHealths < ActiveRecord::Migration
  def self.up
    create_table :healths do |t|
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :healths
  end
end
