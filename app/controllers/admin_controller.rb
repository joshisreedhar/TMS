class AdminController < ApplicationController
  def index	
  	if session[:userid]
      @user = User.find(session[:userid])
      if @user.role_id == 1
        render :layout => 'admin'
      else
        render :theatreindex, :layout => 'admin'
      end
  		
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
