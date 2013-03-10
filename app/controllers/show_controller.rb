class ShowController < ApplicationController
  def update
    @show = Show.find(params[:showid])

  	@show.ticketprice = params[:price]
  	@show.movie_id = params[:movies]

  	if @show.save
  		redirect_to :controller=>'admin' ,:action=>'index'
  	else
  		render('update')
  	end
  end
end
