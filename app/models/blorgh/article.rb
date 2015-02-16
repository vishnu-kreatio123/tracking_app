module Blorgh
  class Article < ActiveRecord::Base
    # geocoded_by :ip_address,
    #             :latitude => :lat, :longitude => :lon
    # after_validation :geocode
  end
end
