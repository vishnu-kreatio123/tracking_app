class RenameColumnTrackingProperty < ActiveRecord::Migration
  def up
    rename_column :blorgh_tracking_properties, :tracking_id, :blorgh_tracking_id
  end

  def down
  end
end
