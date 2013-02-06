class CreateApplicants < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :address1
      t.string :address2
      t.string :department
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :applicants
  end
end
