class AddAttachmentMilestonePictureToMilestones < ActiveRecord::Migration
  def self.up
    add_column :milestones, :milestone_picture_file_name, :string
    add_column :milestones, :milestone_picture_content_type, :string
    add_column :milestones, :milestone_picture_file_size, :integer
    add_column :milestones, :milestone_picture_updated_at, :datetime
  end

  def self.down
    remove_column :milestones, :milestone_picture_file_name
    remove_column :milestones, :milestone_picture_content_type
    remove_column :milestones, :milestone_picture_file_size
    remove_column :milestones, :milestone_picture_updated_at
  end
end
