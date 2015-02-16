class CreateBlorghTrackingProperties < ActiveRecord::Migration
  def change
    create_table :blorgh_tracking_properties do |t|
      t.string :ip
      t.string :city
      t.string :region_code
      t.string :region_name
      t.string :metrocode
      t.string :zipcode
      t.string :latitude
      t.string :longitude
      t.string :country_name
      t.string :country_code
      t.integer :tracking_id

      t.timestamps
    end
  end
end
