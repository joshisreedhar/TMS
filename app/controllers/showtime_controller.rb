class ShowtimeController < ApplicationController
  def index
  	@showtimes = Showtime.all
  end

  def new
  end

  def create
  	@newshowtime = Showtime.new
  	@newshowtime.time = params[:time]
  	@newshowtime.description = params[:Description]

  	if @newshowtime.save
  		redirect_to :action=> 'index'
  	else
  		render('new')
  	end

  end
end
