class AdminController < ApplicationController
  def index	
	if session[:userid]
		render :layout => 'admin'
  	else
  		redirect_to :controller => "sessions", :action=>"new"
  	end
  end

  def theatreindex
  	if session[:userid]
		render :layout => 'admin'
  	else
  		redirect_to :controller => "sessions", :action=>"new"
  	end
  end
end
