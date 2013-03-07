class ConfigureTheatreshowController < ApplicationController
  def index
  	@showtimes = Showtime.all
  end
end
