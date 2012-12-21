class CreateCountryPictures < ActiveRecord::Migration
  def self.up
    create_table :country_pictures do |t|
      t.string :country_picture_file_name
      t.string :country_picture_content_type
      t.integer, :country_picture_file_size
      t.datetime :country_picture_updated_at
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :country_pictures
  end
end
