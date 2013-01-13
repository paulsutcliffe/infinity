class CreateItineraries < ActiveRecord::Migration
  def self.up
    create_table :itineraries do |t|
      t.string :title
      t.string :slug
      t.integer :offer_season_id
      t.integer :travel_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itineraries
  end
end
