class Movie < ActiveRecord::Base
  attr_accessible :certificate_id, :description, :director, :duration, :large_image_url, :lead_cast, :name, :producer, :small_image_url

   validates_presence_of :name,:certificate_id
end
