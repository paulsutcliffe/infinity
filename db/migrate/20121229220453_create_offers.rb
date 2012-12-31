class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.integer :offer_season_id
      t.string :offer_type

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
