class TheatreController < ApplicationController
  def index
  	@theatres = Theatre.all
     render :layout => 'admin'
  end

  def new
     @showtimes = Showtime.all
    render :layout => 'admin'
  end

  def create
    @showtimes = Showtime.all
  	@newtheatre = Theatre.new
  	@newtheatre.name = params[:theatre_name]
  	@newtheatre.imageurl = params[:image_url]
  	@newtheatre.address = params[:address]
  	if @newtheatre.save     
        params.each do |key, value|
          if key.to_s[/show_*/]
            @show = Show.new
            @show.theatre_id = @newtheatre.id
            @show.showtime_id = value.to_s.to_i
            @show.save         
          end
        end      
  		redirect_to :action=>'configureshow' ,:id=>@newtheatre.id
  	else
      @showtimes = Showtime.all
      if @newtheatre.errors
        @newtheatre.errors.full_messages.each  do |message|
          flash.now.alert = message
        end
      end
  		render 'new' ,:layout=> 'admin'
  	end

  end

  def configureshow
    @shows = Show.where(:theatre_id => params[:id])
    @movies = Movie.all
    render :layout => 'admin'     	
  end

  def configure
    @theatres = Theatre.all
     render :layout => 'admin' 
  end

  def details
    @theatre = Theatre.find(params[:id])
    render :layout => 'admin'    
  end
end
