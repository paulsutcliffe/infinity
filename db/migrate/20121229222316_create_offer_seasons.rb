class CreateOfferSeasons < ActiveRecord::Migration
  def self.up
    create_table :offer_seasons do |t|
      t.string :title
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :offer_seasons
  end
end
