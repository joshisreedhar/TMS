class OptionsController < ApplicationController
  def index
  	@movie_id = params[:movies]
  	@shows = Show.where(:movie_id =>@movie_id)
  	@theatres = Show.where(:movie_id => params[:movies]).select(:theatre_id).uniq  	
  	render :layout=>'admin'
  end
end
