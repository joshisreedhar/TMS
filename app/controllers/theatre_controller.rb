class TheatreController < ApplicationController
  def index
  	@theatres = Theatre.all
  end

  def new
     @showtimes = Showtime.all
    render :layout => 'admin'
  end

  def create
  	@newtheatre = Theatre.new
   

  	@newtheatre.name = params[:theatre_name]
  	@newtheatre.imageurl = params[:image_url]
  	@newtheatre.address = params[:address]

  	if @newtheatre.save
  		redirect_to  :action=>'configure', :id => @newtheatre_id
  	else
  		render('new')
  	end

  end

  def configure

    @showtimes = Showtime.all
  	@theatreshowtime = Theatreshow.new 



  end
end
