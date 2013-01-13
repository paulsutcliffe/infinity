class CreateItineraryContents < ActiveRecord::Migration
  def self.up
    create_table :itinerary_contents do |t|
      t.text :content
      t.string :hotel
      t.integer :offer_season_id
      t.integer :travel_id
      t.integer :itinerary_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itinerary_contents
  end
end
