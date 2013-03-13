class PayController < ApplicationController
  def index
  	@show = Show.find(params[:showid])
  	@seats = params[:selectedtickets].gsub(/,$/, '')
  	@movie = Movie.find(@show.movie_id)
  	@theatre = Theatre.find(@show.theatre_id)
  	@showtime = Showtime.find(@show.showtime_id)
  	@showdate = params[:showdate]
  end
end
