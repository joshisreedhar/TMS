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
      if @newshowtime.errors
        @newshowtime.errors.full_messages.each  do |message|
          flash.now.alert = message
        end
      end
      render 'new' ,:layout=> 'admin'
  	end    
  end
end
