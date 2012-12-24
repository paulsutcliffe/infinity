class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.string :title_landing_page
      t.text :text_landing_page
      t.text :about_us
      t.text :history 
      t.text :global_proyection
      t.text :work_with_us

      t.string :picture_landing_page_file_name
      t.string :picture_landing_page_content_type
      t.integer :picture_landing_page_file_size
      t.datetime :picture_landing_page_updated_at    

      t.string :about_picture_file_name
      t.string :about_picture_content_type
      t.integer :about_picture_file_size
      t.datetime :about_picture_updated_at

      t.string :global_proyection_picture_file_name
      t.string :global_proyection_picture_content_type
      t.integer :global_proyection_picture_file_size
      t.datetime :global_proyection_picture_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :abouts
  end
end
