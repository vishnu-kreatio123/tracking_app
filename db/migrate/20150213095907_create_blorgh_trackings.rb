class CreateBlorghTrackings < ActiveRecord::Migration
  def change
    create_table :blorgh_trackings do |t|
      t.integer :subscriber_id
      t.string :entity_type
      t.integer :entity_id
      t.string :browser_name
      t.string :browser_version
      t.integer :browser_height
      t.integer :browser_width
      t.boolean :is_ipad
      t.string :cookie

      t.timestamps
    end
  end
end
