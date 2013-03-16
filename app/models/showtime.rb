class Showtime < ActiveRecord::Base
  attr_accessible :time
  attr_accessible :description

  validates_presence_of :time
end
