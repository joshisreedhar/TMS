class OptionsController < ApplicationController
  def index
  	@params = params
  	@bookingtype = params[:bookingtype]
  	@showdate =  params[:datepicker]
  	@movie_id = params[:movies]
  	@theatre_id = params[:theatres]
  	if @bookingtype == "Cinema"
		@shows = Show.where(:theatre_id =>@theatre_id)
  		@theatres = Show.where(:theatre_id =>@theatre_id).select(:theatre_id).uniq 
  	else
  		@shows = Show.where(:movie_id =>@movie_id)
		@theatres = Show.where(:movie_id => params[:movies]).select(:theatre_id).uniq  	
  	end  	
  	
  	render :layout=>'admin'
  end
end
