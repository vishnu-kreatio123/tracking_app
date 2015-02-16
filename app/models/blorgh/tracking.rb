module Blorgh
  class Tracking < ActiveRecord::Base
     has_one :blorgh_tracking_property
    # geocoded_by :ip_address,
    #             :latitude => :lat, :longitude => :lon
    # after_validation :geocode

    def property
      Blorgh::TrackingProperty.where('blorgh_tracking_id = ?',self.id).last
    end

  end
end


