class CertificateController < ApplicationController
  def index
  	@certificates = Certificate.all
     render :layout => 'admin'
  end

  def new
     render :layout => 'admin'
  end

  def create
  	@certificate = Certificate.new
  	@certificate.name = params[:certificate_name]

  	if @certificate.save
  		 redirect_to :action => "index"
  	else  		 
      if @certificate.errors
        @certificate.errors.full_messages.each  do |message|
          flash.now.alert = message
        end
      end
      render 'new' ,:layout=> 'admin'
  	end

  end
end
