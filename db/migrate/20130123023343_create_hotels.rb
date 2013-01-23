class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.string :name
      t.integer :offer_season_id
      t.integer :travel_id
      t.integer :itinerary_id
      t.integer :itinerary_content_id

      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end
