class AddAttachmentPackPictureToPacks < ActiveRecord::Migration
  def self.up
    add_column :packs, :pack_picture_file_name, :string
    add_column :packs, :pack_picture_content_type, :string
    add_column :packs, :pack_picture_file_size, :integer
    add_column :packs, :pack_picture_updated_at, :datetime
  end

  def self.down
    remove_column :packs, :pack_picture_file_name
    remove_column :packs, :pack_picture_content_type
    remove_column :packs, :pack_picture_file_size
    remove_column :packs, :pack_picture_updated_at
  end
end
