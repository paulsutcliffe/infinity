class CreatePacks < ActiveRecord::Migration
  def self.up
    create_table :packs do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :packs
  end
end
