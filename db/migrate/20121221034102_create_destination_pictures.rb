class CreateDestinationPictures < ActiveRecord::Migration
  def self.up
    create_table :destination_pictures do |t|
      t.string :destination_picture_file_name
      t.string :destination_picture_content_type
      t.integer :destination_picture_file_size
      t.datetime :destination_picture_updated_at
      t.integer :destination_id

      t.timestamps
    end
  end

  def self.down
    drop_table :destination_pictures
  end
end
