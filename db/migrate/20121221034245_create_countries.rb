class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :name
      t.string :time_zone
      t.string :weather
      t.string :voltage
      t.string :currency
      t.text :description
      t.text :image_map
      t.integer :destination_id
      t.string :slug
      t.string :map_file_name
      t.string :map_content_type
      t.integer :map_file_size
      t.datetime :map_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
