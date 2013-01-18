class CreateExtensions < ActiveRecord::Migration
  def self.up
    create_table :extensions do |t|
      t.string :title
      t.text :description
      t.string :price_from
      t.string :days
      t.string :departures
      t.string :party
      t.text :information
      t.text :itinerary_text
      t.integer :travel_id
      t.integer :offer_season

      t.timestamps
    end
  end

  def self.down
    drop_table :extensions
  end
end
