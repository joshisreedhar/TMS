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
  		render('new')
  	end

  end
end
