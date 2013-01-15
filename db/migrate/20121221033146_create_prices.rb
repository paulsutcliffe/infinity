class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.float :travel_price
      t.float :single
      t.float :internal_air
      t.string :available
      t.date :start_date
      t.date :due_date
      t.integer :party
      t.integer :travel_id
      t.integer :offer_season_id
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
