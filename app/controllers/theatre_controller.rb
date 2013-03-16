class TheatreController < ApplicationController
  def index
    if session[:userid]
      @user = User.find(session[:userid])
      if @user.role_id == 1
  	   @theatres = Theatre.all
      else
       @theatres = Theatre.where(:owner_id =>session[:userid])
      end
     render :layout => 'admin'
   else
    redirect_to :controller => "sessions", :action=>"new"
   end
  end

  def new
     @showtimes = Showtime.all
     @users = User.all
    render :layout => 'admin'
  end

  def create
    @showtimes = Showtime.all
  	@newtheatre = Theatre.new
  	@newtheatre.name = params[:theatre_name]
  	@newtheatre.imageurl = params[:image_url]
  	@newtheatre.address = params[:address]
    @newtheatre.owner_id= params[:userid]
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
    if session[:userid]
      @shows = Show.where(:theatre_id => params[:id])
      @movies = Movie.all
      render :layout => 'admin'     	
    else
      redirect_to :controller => "sessions", :action=>"new"
    end
  end

  def configure
     if session[:userid]
      @user = User.find(session[:userid])
      if @user.role_id == 1
       @theatres = Theatre.all
      else
       @theatres = Theatre.where(:owner_id =>session[:userid])
      end
     render :layout => 'admin'
    else
      redirect_to :controller => "sessions", :action=>"new"
    end
  end

  def details
    @theatre = Theatre.find(params[:id])
    render :layout => 'admin'    
  end
end
