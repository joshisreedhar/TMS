class Show < ActiveRecord::Base
  attr_accessible :movie_id, :showtime_id, :theatre_id, :ticketprice
  belongs_to :theatre
end
