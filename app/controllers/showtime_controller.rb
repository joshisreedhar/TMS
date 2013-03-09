class ShowtimeController < ApplicationController
  def index    
  	@showtimes = Showtime.all
    render :layout => 'admin'
  end

  def new
    render :layout => 'admin'
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
    render :layout => 'admin'
  end
end
