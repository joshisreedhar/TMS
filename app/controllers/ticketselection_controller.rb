class TicketselectionController < ApplicationController
  def index
  	@show = Show.find(params[:id])
  	@movie = Movie.find(@show.movie_id)
  	@theatre = Theatre.find(@show.theatre_id)
  	@showtime = Showtime.find(@show.showtime_id)
  	@showdate = params[:showdate]
  end
end
