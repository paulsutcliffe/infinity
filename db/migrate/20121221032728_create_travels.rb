class CreateTravels < ActiveRecord::Migration
  def self.up
    create_table :travels do |t|
      t.string :name
      t.text :overview
      t.text :advantages
      t.string :price
      t.integer :days
      t.integer :departures
      t.integer :maxgroupsize
      t.text :travel_map
      t.text :notes
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :travels
  end
end
