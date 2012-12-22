class CreateTestimonies < ActiveRecord::Migration
  def self.up
    create_table :testimonies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :testimonies
  end
end
