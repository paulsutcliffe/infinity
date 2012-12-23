class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.string :title_landing_page
      t.text :text_landing_page
      t.text :history 
      t.text :global_proyection
      t.text :work_with_us

      t.string :about_picture_file_name
      t.string :about_picture_content_type
      t.integer :about_picture_file_size
      t.datetime :about_picture_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :abouts
  end
end
