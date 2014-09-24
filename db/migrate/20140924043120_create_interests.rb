class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name
      t.belongs_to :destination

      t.timestamps
    end
    add_index :interests, :destination_id
    Interest.create(name: 'Adventure')
    Interest.create(name: 'Family')
    Interest.create(name: 'Wildlife')
  end
end
