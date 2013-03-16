class SessionsController < ApplicationController
  def new  	
  	render :layout => 'admin'
  end

  def create
  	user = User.authenticate(params[:email],params[:password])

  	if user 
  		session[:userid] = user.id
  		if user.role_id ==1
  			redirect_to :controller=>"admin", action:"index"
  		else
  			redirect_to :controller=>"admin", action:"theatreindex", :id=>user.id
  		end
  	else  		
  		flash.now.alert = "invalid email or password"
  		render "new", :layout =>"admin"
  	end

  end

  def signout
      session[:userid]= nil
      render :new ,:layout => 'admin'
  end
end
