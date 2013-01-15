class CreateTravelDaysPricesContents < ActiveRecord::Migration
  def self.up
    create_table :travel_days_prices_contents do |t|
      t.string :room_class
      t.string :travel_price
      t.string :suplement
      t.string :availability

      t.integer :offer_season_id
      t.integer :travel_id
      t.integer :price_id

      t.timestamps
    end
  end

  def self.down
    drop_table :travel_days_prices_contents
  end
end
